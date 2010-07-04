if not modules then modules = { } end modules ['mtx-babel'] = {
    version   = 1.001,
    comment   = "companion to mtxrun.lua",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files"
}

scripts      = scripts      or { }
scripts.grep = scripts.grep or { }

logs.extendbanner("Simple Grepper 0.10",true)

local find, format = string.find, string.format

local cr       = lpeg.P("\r")
local lf       = lpeg.P("\n")
local crlf     = cr * lf
local newline  = crlf + cr + lf
local content  = lpeg.C((1-newline)^0) * newline

local write_nl = texio.write_nl

function scripts.grep.find(pattern, files, offset)
    if pattern and pattern ~= "" then
        statistics.starttiming(scripts.grep)
        local nofmatches, noffiles, nofmatchedfiles = 0, 0, 0
        local n, m, name, check = 0, 0, "", nil
        local count, nocomment = environment.argument("count"), environment.argument("nocomment")
        if nocomment then
            if count then
                check = function(line)
                    n = n + 1
                    if find(line,"^[%%#]") then
                        -- skip
                    elseif find(line,pattern) then
                        m = m + 1
                    end
                end
            else
                check = function(line)
                    n = n + 1
                    if find(line,"^[%%#]") then
                        -- skip
                    elseif find(line,pattern) then
                        m = m + 1
                        write_nl(format("%s %6i: %s",name,n,line))
                        io.flush()
                    end
                end
            end
        else
            if count then
                check = function(line)
                    n = n + 1
                    if find(line,pattern) then
                        m = m + 1
                    end
                end
            else
                check = function(line)
                    n = n + 1
                    if find(line,pattern) then
                        m = m + 1
                        write_nl(format("%s %6i: %s",name,n,line))
                        io.flush()
                    end
                end
            end
        end
        local capture = (content/check)^0
        for i=offset or 1, #files do
            local globbed = dir.glob(files[i])
            for i=1,#globbed do
                local nam = globbed[i]
                name = nam
                local data = io.loaddata(name)
                if data then
                    n, m, noffiles = 0, 0, noffiles + 1
                    capture:match(data)
                    if count and m > 0 then
                        nofmatches = nofmatches + m
                        nofmatchedfiles = nofmatchedfiles + 1
                        write_nl(format("%s: %s",name,m))
                        io.flush()
                    end
                end
            end
        end
        statistics.stoptiming(scripts.grep)
        if count and nofmatches > 0 then
            write_nl(format("\nfiles: %s, matches: %s, matched files: %s, runtime: %0.3f seconds",noffiles,nofmatches,nofmatchedfiles,statistics.elapsedtime(scripts.grep)))
        end
    end
end

messages.help = [[
--pattern             search for pattern (optional)
--count               count matches only
--nocomment           skip lines that start with %% or #

patterns are lua patterns and need to be escaped accordingly
]]

local pattern = environment.argument("pattern")
local files   = environment.files and #environment.files > 0 and environment.files

if pattern and files then
    scripts.grep.find(pattern, files)
elseif files then
    scripts.grep.find(files[1], files, 2)
else
    logs.help(messages.help)
end
