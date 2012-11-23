if not modules then modules = { } end modules ['util-prs'] = {
    version   = 1.001,
    comment   = "companion to luat-lib.mkiv",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files"
}

local lpeg, table, string = lpeg, table, string

local P, R, V, S, C, Ct, Cs, Carg, Cc, Cg, Cf, Cp = lpeg.P, lpeg.R, lpeg.V, lpeg.S, lpeg.C, lpeg.Ct, lpeg.Cs, lpeg.Carg, lpeg.Cc, lpeg.Cg, lpeg.Cf, lpeg.Cp
local lpegmatch, patterns = lpeg.match, lpeg.patterns
local concat, format, gmatch, find = table.concat, string.format, string.gmatch, string.find
local tostring, type, next, rawset = tostring, type, next, rawset

utilities         = utilities or {}
utilities.parsers = utilities.parsers or { }
local parsers     = utilities.parsers
parsers.patterns  = parsers.patterns or { }

local setmetatableindex = table.setmetatableindex
local sortedhash        = table.sortedhash

-- we share some patterns

local space       = P(' ')
local equal       = P("=")
local comma       = P(",")
local lbrace      = P("{")
local rbrace      = P("}")
local period      = S(".")
local punctuation = S(".,:;")
local spacer      = patterns.spacer
local whitespace  = patterns.whitespace
local newline     = patterns.newline
local anything    = patterns.anything
local endofstring = patterns.endofstring

-- we could use a Cf Cg construct

local escape, left, right = P("\\"), P('{'), P('}')

patterns.balanced = P {
    [1] = ((escape * (left+right)) + (1 - (left+right)) + V(2))^0,
    [2] = left * V(1) * right
}

local nobrace   = 1 - (lbrace+rbrace)
local nested    = P { lbrace * (nobrace + V(1))^0 * rbrace }
local spaces    = space^0
local argument  = Cs((lbrace/"") * ((nobrace + nested)^0) * (rbrace/""))
local content   = (1-endofstring)^0

patterns.nested   = nested    -- no capture
patterns.argument = argument  -- argument after e.g. =
patterns.content  = content   -- rest after e.g =

local value     = P(lbrace * C((nobrace + nested)^0) * rbrace) + C((nested + (1-comma))^0)

local key       = C((1-equal-comma)^1)
local pattern_a = (space+comma)^0 * (key * equal * value + key * C(""))
local pattern_c = (space+comma)^0 * (key * equal * value)

local key       = C((1-space-equal-comma)^1)
local pattern_b = spaces * comma^0 * spaces * (key * ((spaces * equal * spaces * value) + C("")))

-- "a=1, b=2, c=3, d={a{b,c}d}, e=12345, f=xx{a{b,c}d}xx, g={}" : outer {} removes, leading spaces ignored

-- todo: rewrite to fold etc
--
-- parse = lpeg.Cf(lpeg.Carg(1) * lpeg.Cg(key * equal * value) * separator^0,rawset)^0 -- lpeg.match(parse,"...",1,hash)

local hash = { }

local function set(key,value)
    hash[key] = value
end

local pattern_a_s = (pattern_a/set)^1
local pattern_b_s = (pattern_b/set)^1
local pattern_c_s = (pattern_c/set)^1

parsers.patterns.settings_to_hash_a = pattern_a_s
parsers.patterns.settings_to_hash_b = pattern_b_s
parsers.patterns.settings_to_hash_c = pattern_c_s

function parsers.make_settings_to_hash_pattern(set,how)
    if how == "strict" then
        return (pattern_c/set)^1
    elseif how == "tolerant" then
        return (pattern_b/set)^1
    else
        return (pattern_a/set)^1
    end
end

function parsers.settings_to_hash(str,existing)
    if str and str ~= "" then
        hash = existing or { }
        lpegmatch(pattern_a_s,str)
        return hash
    else
        return { }
    end
end

function parsers.settings_to_hash_tolerant(str,existing)
    if str and str ~= "" then
        hash = existing or { }
        lpegmatch(pattern_b_s,str)
        return hash
    else
        return { }
    end
end

function parsers.settings_to_hash_strict(str,existing)
    if str and str ~= "" then
        hash = existing or { }
        lpegmatch(pattern_c_s,str)
        return next(hash) and hash
    else
        return nil
    end
end

local separator = comma * space^0
local value     = P(lbrace * C((nobrace + nested)^0) * rbrace) + C((nested + (1-comma))^0)
local pattern   = spaces * Ct(value*(separator*value)^0)

-- "aap, {noot}, mies" : outer {} removes, leading spaces ignored

parsers.patterns.settings_to_array = pattern

-- we could use a weak table as cache

function parsers.settings_to_array(str,strict)
    if not str or str == "" then
        return { }
    elseif strict then
        if find(str,"{") then
            return lpegmatch(pattern,str)
        else
            return { str }
        end
    else
        return lpegmatch(pattern,str)
    end
end

local function set(t,v)
    t[#t+1] = v
end

local value   = P(Carg(1)*value) / set
local pattern = value*(separator*value)^0 * Carg(1)

function parsers.add_settings_to_array(t,str)
    return lpegmatch(pattern,str,nil,t)
end

function parsers.hash_to_string(h,separator,yes,no,strict,omit)
    if h then
        local t, tn, s = { }, 0, table.sortedkeys(h)
        omit = omit and table.tohash(omit)
        for i=1,#s do
            local key = s[i]
            if not omit or not omit[key] then
                local value = h[key]
                if type(value) == "boolean" then
                    if yes and no then
                        if value then
                            tn = tn + 1
                            t[tn] = key .. '=' .. yes
                        elseif not strict then
                            tn = tn + 1
                            t[tn] = key .. '=' .. no
                        end
                    elseif value or not strict then
                        tn = tn + 1
                        t[tn] = key .. '=' .. tostring(value)
                    end
                else
                    tn = tn + 1
                    t[tn] = key .. '=' .. value
                end
            end
        end
        return concat(t,separator or ",")
    else
        return ""
    end
end

function parsers.array_to_string(a,separator)
    if a then
        return concat(a,separator or ",")
    else
        return ""
    end
end

function parsers.settings_to_set(str,t) -- tohash? -- todo: lpeg -- duplicate anyway
    t = t or { }
--  for s in gmatch(str,"%s*([^, ]+)") do -- space added
    for s in gmatch(str,"[^, ]+") do -- space added
        t[s] = true
    end
    return t
end

function parsers.simple_hash_to_string(h, separator)
    local t, tn = { }, 0
    for k, v in sortedhash(h) do
        if v then
            tn = tn + 1
            t[tn] = k
        end
    end
    return concat(t,separator or ",")
end

local value   = lbrace * C((nobrace + nested)^0) * rbrace
local pattern = Ct((space + value)^0)

function parsers.arguments_to_table(str)
    return lpegmatch(pattern,str)
end

-- temporary here (unoptimized)

function parsers.getparameters(self,class,parentclass,settings)
    local sc = self[class]
    if not sc then
        sc = { }
        self[class] = sc
        if parentclass then
            local sp = self[parentclass]
            if not sp then
                sp = { }
                self[parentclass] = sp
            end
            setmetatableindex(sc,sp)
        end
    end
    parsers.settings_to_hash(settings,sc)
end

function parsers.listitem(str)
    return gmatch(str,"[^, ]+")
end

--
local digit = R("09")

local pattern = Cs { "start",
    start    = V("one") + V("two") + V("three"),
    rest     = (Cc(",") * V("thousand"))^0 * (P(".") + endofstring) * anything^0,
    thousand = digit * digit * digit,
    one      = digit * V("rest"),
    two      = digit * digit * V("rest"),
    three    = V("thousand") * V("rest"),
}

patterns.splitthousands = pattern -- maybe better in the parsers namespace ?

function parsers.splitthousands(str)
    return lpegmatch(pattern,str) or str
end

-- print(parsers.splitthousands("11111111111.11"))

local optionalwhitespace = whitespace^0

patterns.words      = Ct((Cs((1-punctuation-whitespace)^1) + anything)^1)
patterns.sentences  = Ct((optionalwhitespace * Cs((1-period)^0 * period))^1)
patterns.paragraphs = Ct((optionalwhitespace * Cs((whitespace^1*endofstring/"" + 1 - (spacer^0*newline*newline))^1))^1)

-- local str = " Word1 word2. \n Word3 word4. \n\n Word5 word6.\n "
-- inspect(lpegmatch(patterns.paragraphs,str))
-- inspect(lpegmatch(patterns.sentences,str))
-- inspect(lpegmatch(patterns.words,str))

-- handy for k="v" [, ] k="v"

local dquote    = P('"')
local equal     = P('=')
local escape    = P('\\')
local separator = S(' ,')

local key       = C((1-equal)^1)
local value     = dquote * C((1-dquote-escape*dquote)^0) * dquote

local pattern   = Cf(Ct("") * Cg(key * equal * value) * separator^0,rawset)^0

parsers.patterns.keq_to_hash_c = pattern

function parsers.keq_to_hash(str)
    if str and str ~= "" then
        return lpegmatch(pattern,str)
    else
        return { }
    end
end

-- inspect(lpeg.match(pattern,[[key="value"]]))

local defaultspecification = { separator = ",", quote = '"' }

-- this version accepts multiple separators and quotes as used in the
-- database module

function parsers.csvsplitter(specification)
    specification     = specification and table.setmetatableindex(specification,defaultspecification) or defaultspecification
    local separator = specification.separator
    local quotechar = specification.quote
    local separator = S(separator ~= "" and separator or ",")
    local whatever  = C((1 - separator - newline)^0)
    if quotechar and quotechar ~= "" then
        local quotedata = nil
        for chr in gmatch(quotechar,".") do
            local quotechar = P(chr)
            local quoteword = quotechar * C((1 - quotechar)^0) * quotechar
            if quotedata then
                quotedata = quotedata + quoteword
            else
                quotedata = quoteword
            end
        end
        whatever = quotedata + whatever
    end
    local parser = Ct((Ct(whatever * (separator * whatever)^0) * S("\n\r"))^0 )
    return function(data)
        return lpegmatch(parser,data)
    end
end

-- and this is a slightly patched version of a version posted by Philipp Gesang

-- local mycsvsplitter = utilities.parsers.rfc4180splitter()
--
-- local crap = [[
-- first,second,third,fourth
-- "1","2","3","4"
-- "a","b","c","d"
-- "foo","bar""baz","boogie","xyzzy"
-- ]]
--
-- local list, names = mycsvsplitter(crap,true)   inspect(list) inspect(names)
-- local list, names = mycsvsplitter(crap)        inspect(list) inspect(names)

function parsers.rfc4180splitter(specification)
    specification     = specification and table.setmetatableindex(specification,defaultspecification) or defaultspecification
    local separator   = specification.separator --> rfc: COMMA
    local quotechar   = P(specification.quote)  -->      DQUOTE
    local dquotechar  = quotechar * quotechar   -->      2DQUOTE
                      / specification.quote
    local separator   = S(separator ~= "" and separator or ",")
    local escaped     = quotechar
                      * Cs((dquotechar + (1 - quotechar))^0)
                      * quotechar
    local non_escaped = C((1 - quotechar - newline - separator)^1)
    local field       = escaped + non_escaped
    local record      = Ct((field * separator^-1)^1)
    local headerline  = record * Cp()
    local wholeblob   = Ct((newline^-1 * record)^0)
    return function(data,getheader)
        if getheader then
            local header, position = lpegmatch(headerline,data)
            local data = lpegmatch(wholeblob,data,position)
            return data, header
        else
            return lpegmatch(wholeblob,data)
        end
    end
end

