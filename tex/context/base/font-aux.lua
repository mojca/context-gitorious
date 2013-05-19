if not modules then modules = { } end modules ['font-aux'] = {
    version   = 1.001,
    comment   = "companion to font-ini.mkiv",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files"
}

local tonumber, type = tonumber, type
----- wrap, yield = coroutine.wrap, coroutine.yield

local fonts, font = fonts, font

local iterators   = { }
fonts.iterators   = iterators

local currentfont = font.current
local identifiers = fonts.hashes.identifiers
local sortedkeys  = table.sortedkeys

-- for unicode, character   in fonts.iterators.characters  () do print(unicode) end
-- for unicode, description in fonts.iterators.descriptions() do print(unicode) end
-- for index,   glyph       in fonts.iterators.glyphs      () do print(index  ) end

local function dummy() end

local function checkeddata(data) -- beware, nullfont is the fallback in identifiers
    local t = type(data)
    if t == "table" then
        return data
    elseif t ~= "number" then
        data = currentfont()
    end
    return identifiers[data] -- has nullfont as fallback
end

local function getindices(data)
    data = checkeddata(data)
    local indices = { }
    local characters = data.characters
    if characters then
        for unicode, character in next, characters do
            indices[character.index or unicode] = unicode
        end
    end
    return indices
end

-- function iterators.characters(data)
--     data = checkeddata(data)
--     local characters = data.characters
--     if characters then
--         local collected = sortedkeys(characters)
--         return wrap(function()
--             for c=1,#collected do
--                 local cc = collected[c]
--                 local dc = characters[cc]
--                 if dc then
--                     yield(cc,dc)
--                 end
--             end
--         end)
--     else
--         return wrap(function() end)
--     end
-- end

-- function iterators.descriptions(data)
--     data = checkeddata(data)
--     local characters = data.characters
--     local descriptions = data.descriptions
--     if characters and descriptions then
--         local collected = sortedkeys(characters)
--         return wrap(function()
--             for c=1,#collected do
--                 local cc = collected[c]
--                 local dc = descriptions[cc]
--                 if dc then
--                     yield(cc,dc)
--                 end
--             end
--         end)
--     else
--         return wrap(function() end)
--     end
-- end

-- function iterators.glyphs(data)
--     data = checkeddata(data)
--     local descriptions = data.descriptions
--     if descriptions then
--         local indices = getindices(data)
--         local collected = sortedkeys(indices)
--         return wrap(function()
--             for c=1,#collected do
--                 local cc = collected[c]
--                 local dc = descriptions[indices[cc]]
--                 if dc then
--                     yield(cc,dc)
--                 end
--             end
--         end)
--     else
--         return wrap(function() end)
--     end
-- end

function iterators.characters(data)
    data = checkeddata(data)
    local characters = data.characters
    if characters then
        local collected = sortedkeys(characters)
        local n, i = #collected, 0
        return function()
            i = i + 1
            if i <= n then
                local cc = collected[i]
                local dc = characters[cc]
                return cc, dc or { }
            end
        end
    else
        return dummy
    end
end

function iterators.descriptions(data)
    data = checkeddata(data)
    local characters = data.characters
    local descriptions = data.descriptions
    if characters and descriptions then
        local collected = sortedkeys(characters)
        local n, i = #collected, 0
        return function()
            i = i + 1
            if i <= n then
                local cc = collected[i]
                local dc = descriptions[cc]
                return cc, dc or { }
            end
        end
    else
        return dummy
    end
end

function iterators.glyphs(data)
    data = checkeddata(data)
    local descriptions = data.descriptions
    if descriptions then
        local indices = getindices(data)
        local collected = sortedkeys(indices)
        local n, i = #collected, 0
        return function()
            i = i + 1
            if i <= n then
                local cc = collected[i]
                local dc = descriptions[indices[cc]]
                return cc, dc or { }
            end
        end
    else
        return dummy
    end
end
