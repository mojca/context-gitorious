local info = {
    version   = 1.002,
    comment   = "basics for scintilla lpeg lexer for context/metafun",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files",
}

-- The fold and lex functions are copied and patched from original code by Mitchell (see
-- lexer.lua). All errors are mine.
--
-- For huge files folding can be pretty slow and I do have some large ones that I keep
-- open all the time. Loading is normally no ussue, unless one has remembered the status
-- and the cursor is at the last line of a 200K line file. Optimizing the fold function
-- brought down loading of char-def.lua from 14 sec => 8 sec. Replacing the word_match
-- function and optimizing the lex function gained another 2+ seconds. A 6 second load
-- is quite ok for me.

local R, P, S, Cp, Cs, Ct, Cmt, Cc = lpeg.R, lpeg.P, lpeg.S, lpeg.Cp, lpeg.Cs, lpeg.Ct, lpeg.Cmt, lpeg.Cc
local lpegmatch = lpeg.match
local find, gmatch, match, lower, upper, gsub = string.find, string.gmatch, string.match, string.lower, string.upper, string.gsub
local concat = table.concat
local global = _G
local type, next, setmetatable = type, next, setmetatable

dofile(_LEXERHOME .. '/lexer.lua')

lexer.context = lexer.context or { }

-- function lexer.context.loaddefinitions(name)
--     local basepath = lexer.context and lexer.context.path or _LEXERHOME
--     local definitions = loadfile(basepath and (basepath .. "/" .. name) or name)
--     if not definitions then
--         definitions = loadfile(_LEXERHOME .. "/context/" .. name)
--     end
--     if type(definitions) == "function" then
--         definitions = definitions()
--     end
--     if type(definitions) == "table" then
--         return definitions
--     else
--         return nil
--     end
-- end

function lexer.context.loaddefinitions(name)
    local definitions = loadfile(_LEXERHOME .. "/context/" .. name)
    if not definitions and lexer.context and lexer.context.path then
        definitions = loadfile(lexer.context.path .. "/" .. name)
    end
    if not definitions and lexer.context and lexer.context.path then
        definitions = loadfile(name)
    end
    if type(definitions) == "function" then
        definitions = definitions()
    end
    if type(definitions) == "table" then
        return definitions
    else
        return nil
    end
end

-- maybe more efficient:

function lexer.context.word_match(words,word_chars,case_insensitive)
    local chars = '%w_' -- maybe just "" when word_chars
    if word_chars then
        chars = '^([' .. chars .. gsub(word_chars,'([%^%]%-])', '%%%1') ..']+)'
    else
        chars = '^([' .. chars ..']+)'
    end
    if case_insensitive then
        local word_list = { }
        for i=1,#words do
            word_list[lower(words[i])] = true
        end
        return P(function(input, index)
            local s, e, word = find(input,chars,index)
            return word and word_list[lower(word)] and e + 1 or nil
        end)
    else
        local word_list = { }
        for i=1,#words do
            word_list[words[i]] = true
        end
        return P(function(input, index)
            local s, e, word = find(input,chars,index)
            return word and word_list[word] and e + 1 or nil
        end)
    end
end

-- nicer anyway:

-- todo: utf

function lexer.context.exact_match(words,case_insensitive)
    local pattern = S(concat(words)) + R("az","AZ","\127\255") -- the concat catches _ etc
    if case_insensitive then
        local list = { }
        for i=1,#words do
            list[lower(words[i])] = true
        end
        return Cmt(pattern^1, function(_,i,s)
            return list[lower(s)] and i
        end)
    else
        local list = { }
        for i=1,#words do
            list[words[i]] = true
        end
        return Cmt(pattern^1, function(_,i,s)
            return list[s] and i
        end)
    end
end

function lexer.context.word_match(words,word_chars,case_insensitive) -- word_chars not used (can be omitted)
    if word_chars == true then
        return lexer.context.exact_match(words,true)
    else
        return lexer.context.exact_match(words,case_insensitive)
    end
end

-- Overloaded functions.

local FOLD_BASE   = SC_FOLDLEVELBASE
local FOLD_HEADER = SC_FOLDLEVELHEADERFLAG
local FOLD_BLANK  = SC_FOLDLEVELWHITEFLAG

local newline = P("\r\n") + S("\r\n")

local splitlines = Ct( ( Ct ( (Cp() * Cs((1-newline)^1) * newline^-1) + (Cp() * Cc("") * newline) ) )^0)

local h_table, b_table, n_table = { }, { }, { }

setmetatable(h_table, { __index = function(t,level) local v = { level, FOLD_HEADER } t[level] = v return v end })
setmetatable(b_table, { __index = function(t,level) local v = { level, FOLD_BLANK  } t[level] = v return v end })
setmetatable(n_table, { __index = function(t,level) local v = { level              } t[level] = v return v end })

local get_style_at      = GetStyleAt
local get_property      = GetProperty
local get_indent_amount = GetIndentAmount

--         local lines = lpegmatch(splitlines,text) -- iterating over lines is faster
--         for i=1, #lines do
--             local li = lines[i]
--             local line = li[2]
--             if line ~= "" then
--                 local pos = li[1]
--                 for i=1,nofpatterns do
--                     for s, m in gmatch(line,patterns[i]) do
--                         if hash[m] then
--                             local symbols = fold_symbols[get_style_at(start_pos + pos + s - 1)]
--                             if symbols then
--                                 local l = symbols[m]
--                                 if l then
--                                     local t = type(l)
--                                     if t == 'number' then
--                                         current_level = current_level + l
--                                     elseif t == 'function' then
--                                         current_level = current_level + l(text, pos, line, s, match)
--                                     end
--                                     if current_level < FOLD_BASE then -- integrate in previous
--                                         current_level = FOLD_BASE
--                                     end
--                                 end
--                             end
--                         end
--                     end
--                 end
--                 if current_level > prev_level then
--                     folds[line_num] = h_table[prev_level] -- { prev_level, FOLD_HEADER }
--                 else
--                     folds[line_num] = n_table[prev_level] -- { prev_level }
--                 end
--                 prev_level = current_level
--             else
--                 folds[line_num] = b_table[prev_level] -- { prev_level, FOLD_BLANK }
--             end
--             line_num = line_num + 1
--         end

-- not that much faster but less memory:

local action_y, action_n

local splitlines = ( (
    (Cp() * Cs((1-newline)^1) * newline^-1) / function(p,l) action_y(p,l) end
  + (                           newline   ) / function()    action_n()    end
) )^0

function lexer.context.fold(text, start_pos, start_line, start_level)
    if text == '' then
        return folds
    end
    local lexer = global._LEXER
    if lexer._fold then
        return lexer._fold(text, start_pos, start_line, start_level)
    end
    local folds = { }
    if lexer._foldsymbols then
        local fold_symbols = lexer._foldsymbols
        local line_num = start_line
        local prev_level = start_level
        local current_level = prev_level
        local patterns = fold_symbols._patterns
        local nofpatterns = #patterns
        local hash = fold_symbols._hash
        if not hash then
            hash = { }
            for symbol, matches in next, fold_symbols do
                if not find(symbol,"^_") then
                    for s, _ in next, matches do
                        hash[s] = true
                    end
                end
            end
            fold_symbols._hash = hash
        end
        action_y = function(pos,line)
            for i=1,nofpatterns do
                for s, m in gmatch(line,patterns[i]) do
                    if hash[m] then
                        local symbols = fold_symbols[get_style_at(start_pos + pos + s - 1)]
                        if symbols then
                            local l = symbols[m]
                            if l then
                                local t = type(l)
                                if t == 'number' then
                                    current_level = current_level + l
                                    if current_level < FOLD_BASE then -- can this happen?
                                        current_level = FOLD_BASE
                                    end
                                elseif t == 'function' then
                                    current_level = current_level + l(text, pos, line, s, match)
                                    if current_level < FOLD_BASE then
                                        current_level = FOLD_BASE
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if current_level > prev_level then
                folds[line_num] = h_table[prev_level] -- { prev_level, FOLD_HEADER }
            else
                folds[line_num] = n_table[prev_level] -- { prev_level }
            end
            prev_level = current_level
            line_num = line_num + 1
        end
        action_n = function()
            folds[line_num] = b_table[prev_level] -- { prev_level, FOLD_BLANK }
            line_num = line_num + 1
        end
        local lines = lpegmatch(splitlines,text)
    elseif get_property('fold.by.indentation', 1) == 1 then
        local current_line = start_line
        local prev_level = start_level
        for _, line in gmatch(text,'([\t ]*)(.-)\r?\n') do
            if line ~= "" then
                local current_level = FOLD_BASE + get_indent_amount(current_line)
                if current_level > prev_level then -- next level
                    local i = current_line - 1
                    while true do
                        local f = folds[i]
                        if f and f[2] == FOLD_BLANK then
                            i = i - 1
                        else
                            break
                        end
                    end
                    local f = folds[i]
                    if f then
                        f[2] = FOLD_HEADER
                    end -- low indent
                    folds[current_line] = n_table[current_level] -- { current_level } -- high indent
                elseif current_level < prev_level then -- prev level
                    local f = folds[current_line - 1]
                    if f then
                        f[1] = prev_level -- high indent
                    end
                    folds[current_line] = n_table[current_level] -- { current_level } -- low indent
                else -- same level
                    folds[current_line] = n_table[prev_level] -- { prev_level }
                end
                prev_level = current_level
            else
                folds[current_line] = b_table[prev_level] -- { prev_level, FOLD_BLANK }
            end
            current_line = current_line + 1
        end
    else
        for _ in gmatch(text,".-\r?\n") do
            folds[start_line] = n_table[start_level] -- { start_level }
            start_line = start_line + 1
        end
    end
    return folds
end

function lexer.context.lex(text, init_style)
    local lexer = global._LEXER
    local grammar = lexer._GRAMMAR
    if not grammar then
        return { }
    elseif lexer._LEXBYLINE then
        local tokens = { }
        local offset = 0
        local noftokens = 0
        for line in gmatch(text,'[^\r\n]*\r?\n?') do -- could be an lpeg
            local line_tokens = lpeg_match(grammar, line)
            if line_tokens then
                for i=1,#line_tokens do
                    local token = line_tokens[i]
                    token[2] = token[2] + offset
                    noftokens = noftokens + 1
                    tokens[noftokens] = token
                end
            end
            offset = offset + #line
            if noftokens > 0 and tokens[noftokens][2] ~= offset then
                noftokens = noftokens + 1
                tokens[noftokens] = { 'default', offset + 1 }
            end
        end
        return tokens
    elseif lexer._CHILDREN then
        local _hash = lexer._HASH
        if not hash then
            hash = { }
            lexer._HASH = hash
        end
        grammar = hash[init_style]
        if not grammar then
            for style, style_num in next, lexer._TOKENS do
                if style_num == init_style then
                    local lexer_name = match(style,'^(.+)_whitespace') or lexer._NAME
                    if lexer._INITIALRULE ~= lexer_name then
                        build_grammar(lexer, lexer_name)
                    end
                    break
                end
            end
            grammar = lexer._GRAMMAR
            hash[init_style] = grammar
        end
        return lpegmatch(grammar, text)
    else
        return lpegmatch(grammar, text)
    end
end

lexer.fold       = lexer.context.fold
lexer.lex        = lexer.context.lex
lexer.word_match = lexer.context.word_match