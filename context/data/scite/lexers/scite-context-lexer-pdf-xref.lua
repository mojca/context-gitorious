local info = {
    version   = 1.002,
    comment   = "scintilla lpeg lexer for pdf xref",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files",
}

local lexer = lexer
local token = lexer.token
local P, R = lpeg.P, lpeg.R

-- xref
-- cardinal cardinal [character]
-- ..
-- %%EOF | startxref | trailer

local pdfxreflexer   = { _NAME = "pdf-xref", _FILENAME = "scite-context-lexer-pdf-xref" }
local whitespace     = lexer.WHITESPACE -- triggers states
local context        = lexer.context
local patterns       = context.patterns

local pdfobjectlexer = lexer.load("scite-context-lexer-pdf-object")

local spacing        = patterns.spacing

local t_spacing      = token(whitespace, spacing)

local p_trailer      = P("trailer")

local t_number       = token("number", R("09")^1)
                     * t_spacing
                     * token("number", R("09")^1)
                     * t_spacing
                     * (token("keyword", R("az","AZ")) * t_spacing)^-1

local t_xref         = t_number^1

-- local t_xref         = token("default", (1-p_trailer)^1)
--                      * token("keyword", p_trailer)
--                      * t_spacing
--                      * pdfobjectlexer._shared.dictionary

pdfxreflexer._rules = {
    { 'whitespace', t_spacing },
    { 'xref',       t_xref    },
}

pdfxreflexer._tokenstyles = context.styleset

return pdfxreflexer
