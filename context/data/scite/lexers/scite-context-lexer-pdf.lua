local info = {
    version   = 1.002,
    comment   = "scintilla lpeg lexer for pdf",
    author    = "Hans Hagen, PRAGMA-ADE, Hasselt NL",
    copyright = "PRAGMA ADE / ConTeXt Development Team",
    license   = "see context related readme files",
}

if not lexer._CONTEXTEXTENSIONS then dofile(_LEXERHOME .. "/scite-context-lexer.lua") end

local lexer = lexer
local token = lexer.token
local P, R, S = lpeg.P, lpeg.R, lpeg.S

local pdflexer          = { _NAME = "pdf" }
local pdfobjectlexer    = lexer.load("scite-context-lexer-pdf-object")
local pdfxreflexer      = lexer.load("scite-context-lexer-pdf-xref")

local whitespace        = lexer.WHITESPACE -- triggers states

local context           = lexer.context
local patterns          = context.patterns

local space             = patterns.space
local spacing           = patterns.spacing
local nospacing         = patterns.nospacing
local anything          = patterns.anything
local restofline        = patterns.restofline

local t_spacing         = token(whitespace, spacing)
local t_rest            = token("default",  nospacing) -- anything

local p_obj             = P("obj")
local p_endobj          = P("endobj")
local p_xref            = P("xref")
local p_startxref       = P("startxref")

local p_objectnumber    = patterns.cardinal
local p_comment         = P('%') * restofline

local t_comment         = token("comment", p_comment)
local t_openobject      = token("number",  p_objectnumber)
                        * t_spacing
                        * token("number",  p_objectnumber)
                        * t_spacing
                        * token("keyword", p_obj)
                        * t_spacing^0
local t_closeobject     = token("keyword", p_endobj)

local t_openxref        = token("keyword", p_xref)
local t_closexref       = token("keyword", p_startxref)

lexer.embed_lexer(pdflexer, pdfobjectlexer, t_openobject, t_closeobject)
lexer.embed_lexer(pdflexer, pdfxreflexer,   t_openxref,   t_closexref)

pdflexer._rules = {
    { 'whitespace', t_spacing },
    { 'comment',    t_comment },
    { 'rest',       t_rest    },
}

pdflexer._tokenstyles = context.styleset

return pdflexer
