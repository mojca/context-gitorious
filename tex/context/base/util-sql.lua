if not modules then modules = { } end modules ['util-sql'] = {
    version   = 1.001,
    comment   = "companion to m-sql.mkiv",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files"
}

-- Of course we could use a library but we don't want another depedency and
-- there is a bit of flux in these libraries. Also, we want the data back in
-- a way that we like.

-- buffer template

local format = string.format
local rawset, setmetatable, loadstring = rawset, setmetatable, loadstring
local P, S, V, C, Cs, Ct, Cc, Cg, Cf, patterns, lpegmatch = lpeg.P, lpeg.S, lpeg.V, lpeg.C, lpeg.Cs, lpeg.Ct, lpeg.Cc, lpeg.Cg, lpeg.Cf, lpeg.patterns, lpeg.match
local concat = table.concat

local osclock       = os.clock or os.time
local fastserialize = table.fastserialize
local lpegmatch     = lpeg.match

local trace_sql    = false  trackers.register("sql.trace",function(v) trace_sql = v end)
local report_state = logs.reporter("sql")

utilities.sql      = utilities.sql or { }
local sql          = utilities.sql

local replacetemplate = utilities.templates.replace
local loadtemplate    = utilities.templates.load

local defaults     = { __index =
    {
        resultfile     = "result.dat",
        templatefile   = "template.sql",
        queryfile      = "query.sql",
        variables      = { },
        username       = "default",
        password       = "default",
        host           = "localhost",
        port           = 3306,
        database       = "default",
    },
}

local engine  = "mysql"

local runners = { -- --defaults-extra-file="%inifile"
    mysql = [[mysql --user="%username%" --password="%password%" --host="%host%" --port=%port% --database="%database%" < "%queryfile%" > "%resultfile%"]],
--     mysql = [[mysql --user="%username%" --password="%password%" --host="%host%" --port=%port% --database="%database%" < "%queryfile%"]],
}

sql.runners = runners

-- Experiments with an p/action demonstrated that there is not much gain. We could do a runtime
-- capture but creating all the small tables is not faster and it doesn't work well anyway.

local separator    = P("\t")
local newline      = patterns.newline
local entry        = C((1-separator-newline)^0) -- C 10% faster than Cs
local empty        = Cc("")

local getfirst     = Ct( entry * (separator * (entry+empty))^0) + newline
local skipfirst    = (1-newline)^1 * newline
local getfirstline = C((1-newline)^0)

local cache = { }

local function splitdata(data) -- todo: hash on first line
    if data == "" then
        if trace_sql then
            report_state("no data")
        end
        return { }, { }
    end
    local first = lpegmatch(getfirstline,data)
    if not first then
        if trace_sql then
            report_state("no data")
        end
        return { }, { }
    end
    local p = cache[first]
    if p then
     -- report_state("reusing: %s",first)
        local entries = lpegmatch(p.parser,data)
        return entries or { }, p.keys
    elseif p == false then
        return { }, { }
    elseif p == nil then
        local keys = lpegmatch(getfirst,first) or { }
        if #keys == 0 then
            if trace_sql then
                report_state("no banner")
            end
            cache[first] = false
            return { }, { }
        end
        -- quite generic, could be a helper
        local n = #keys
        if n == 0 then
            report_state("no fields")
            cache[first] = false
            return { }, { }
        end
        if n == 1 then
            local key = keys[1]
            if trace_sql then
                report_state("one field with name",key)
            end
            p = Cg(Cc(key) * entry)
        else
            for i=1,n do
                local key = keys[i]
                if trace_sql then
                    report_state("field %s has name %q",i,key)
                end
                local s = Cg(Cc(key) * entry)
                if p then
                    p = p * separator * s
                else
                    p = s
                end
            end
        end
        p = Cf(Ct("") * p,rawset) * newline^1
        p = skipfirst * Ct(p^0)
        cache[first] = { parser = p, keys = keys }
        local entries = lpegmatch(p,data)
        return entries or { }, keys
    end
end

-- I will add a bit more checking.

local function validspecification(specification)
    local presets = specification.presets
    if type(presets) == "string" then
        presets = dofile(presets)
    end
    if type(presets) == "table" then
        setmetatable(presets,defaults)
        setmetatable(specification,{ __index = presets })
    else
        setmetatable(specification,defaults)
    end
    local templatefile = specification.templatefile
    local queryfile    = specification.queryfile  or file.nameonly(templatefile) .. "-temp.sql"
    local resultfile   = specification.resultfile or file.nameonly(templatefile) .. "-temp.dat"
    specification.queryfile  = queryfile
    specification.resultfile = resultfile
    if trace_sql then
        report_state("template file: %q",templatefile)
        report_state("query file: %q",queryfile)
        report_state("result file: %q",resultfile)
    end
    return true
end

local function dataprepared(specification)
    local query = false
    if specification.template then
        query = replacetemplate(specification.template,specification.variables)
    elseif specification.templatefile then
        query = loadtemplate(specification.templatefile,specification.variables)
    end
    if query then
        io.savedata(specification.queryfile,query)
        return true
    else
        -- maybe push an error
        os.remove(specification.queryfile)
    end
end

local function datafetched(specification)
    local command = replacetemplate(runners[engine],specification)
    if trace_sql then
        local t = osclock()
        report_state("command: %s",command)
        os.execute(command)
        report_state("fetchtime: %.3f sec",osclock()-t) -- not okay under linux
    else
        os.execute(command)
-- return os.resultof(command)
    end
    return true
end

local function dataloaded(specification)
    if trace_sql then
        local t = osclock()
        local data = io.loaddata(specification.resultfile) or ""
        report_state("datasize: %.3f MB",#data/1024/1024)
        report_state("loadtime: %.3f sec",osclock()-t)
        return data
    else
        return io.loaddata(specification.resultfile) or ""
    end
end

local function dataconverted(data)
    if trace_sql then
        local t = osclock()
        local data, keys = splitdata(data)
        report_state("converttime: %.3f",osclock()-t)
        report_state("keys: %s ",#keys)
        report_state("entries: %s ",#data)
        return data, keys
    else
        return splitdata(data)
    end
end

-- todo: new, etc

function sql.fetch(specification)
    if trace_sql then
        report_state("fetching")
    end
    if not validspecification(specification) then
        report("error in specification")
        return
    end
    if not dataprepared(specification) then
        report("error in preparation")
        return
    end
    if not datafetched(specification) then
        report("error in fetching")
        return
    end
    local data = dataloaded(specification)
-- local data = datafetched(specification)
    if not data then
        report("error in loading")
        return
    end
    local data, keys = dataconverted(data)
    if not data then
        report("error in converting")
        return
    end
    return data, keys
end

function sql.reuse(specification)
    if trace_sql then
        report_state("reusing")
    end
    if not validspecification(specification) then
        report("error in specification")
        return
    end
    local data = dataloaded(specification)
    if not data then
        report("error in loading")
        return
    end
    local data, keys = dataconverted(data)
    if not data then
        report("error in converting")
        return
    end
    return data, keys
end

sql.splitdata = splitdata

-- -- --

-- local data = utilities.sql.prepare {
--     templatefile = "test.sql",
--     variables    = { },
--     host         = "...",
--     username     = "...",
--     password     = "...",
--     database     = "...",
-- }

-- local presets = {
--     host     = "...",
--     username = "...",
--     password = "...",
--     database = "...",
-- }
--
-- local data = utilities.sql.prepare {
--     templatefile = "test.sql",
--     variables    = { },
--     presets      = presets,
-- }

-- local data = utilities.sql.prepare {
--     templatefile = "test.sql",
--     variables    = { },
--     presets      = dofile(...),
-- }

-- local data = utilities.sql.prepare {
--     templatefile = "test.sql",
--     variables    = { },
--     presets      = "...",
-- }

-- -- --

local e_pattern = lpeg.replacer { { '\\"','\\\\""' }, {'"','""'} }
local u_pattern = lpeg.replacer { { '\\\\','\\' } }

function sql.escape(str)
    return lpegmatch(e_replace,str)
end

function sql.unescape(str)
    return lpegmatch(u_replace,str)
end

function sql.serialize(t)
    return lpegmatch(e_pattern,fastserialize(t,"return"))
end

function sql.deserialize(data)
    data = lpegmatch(u_pattern,data)
    data = data and loadstring(data)
    data = data and data()
    return data
end

-- -- --

if tex and tex.systemmodes then

    function sql.prepare(specification)
        if tex.systemmodes["first"] then
            return sql.fetch(specification)
        else
            return sql.reuse(specification)
        end
    end

else

    sql.prepare = sql.fetch

end
