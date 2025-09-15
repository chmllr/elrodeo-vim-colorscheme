" Name:    Elrodeo (Based on Nova structure)
" Author:  Christian Müller
" License: MIT
" Version: 5.0.2
" Description: Modern Neovim colorscheme based on Nova structure with ElRodeo colors

" ==================================================================
" COLOR PALETTE
" ==================================================================

let s:bg           = '#334042'
let s:bg_alt       = '#455558'
let s:cursor_line  = '#394547'
let s:fg           = '#c0c0c0'
let s:fg_alt       = '#7a8590'
let s:white        = '#ffffff'
let s:accent       = '#2d9885'
let s:blue         = '#8fbadb'
let s:purple       = '#9470ff'
let s:red          = '#e05252'

" ==================================================================
" HIGHLIGHT HELPER
" ==================================================================

function! s:highlight_helper(...)
  let l:syntax_group = a:1
  let l:foreground_color = a:2
  let l:background_color = empty(a:3) ? "NONE" : a:3
  let l:gui = a:0 >= 4 ? a:4 : "NONE"

  let l:cmd = "highlight " . l:syntax_group . " guifg=" . l:foreground_color . " guibg=" . l:background_color
  if !empty(l:gui) && l:gui != "NONE"
    let l:cmd .= " gui=" . l:gui
  endif

  exec l:cmd
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
syntax on
syntax reset
let g:colors_name = "elrodeo"
call s:highlight_helper("Normal", s:fg, s:bg)


" ==================================================================
" UI GROUPS
" ==================================================================

" USER ACTION NEEDED
call s:highlight_helper("Error", s:red, "")
call s:highlight_helper("ErrorMsg", s:red, "")
call s:highlight_helper("WarningMsg", s:red, "")
call s:highlight_helper("SpellBad", s:red, "")
call s:highlight_helper("SpellCap", s:red, "")
call s:highlight_helper("Todo", s:red, "")
call s:highlight_helper("typescriptParenError", s:red, "")
call s:highlight_helper("NeomakeErrorSign", s:red, "")
call s:highlight_helper("NeomakeWarningSign", s:red, "")

" USER CURRENT STATE
call s:highlight_helper("SignColumn", "NONE", s:bg)
call s:highlight_helper("MatchParen", s:accent, "")
call s:highlight_helper("CursorLineNr", s:accent, "")
call s:highlight_helper("Visual", s:bg, s:accent)
call s:highlight_helper("VisualNOS", s:bg, s:accent)
call s:highlight_helper("Folded", s:accent, "")
call s:highlight_helper("FoldColumn", s:accent, "")
call s:highlight_helper("IncSearch", s:accent, s:bg)
call s:highlight_helper("Search", s:accent, s:bg)
call s:highlight_helper("WildMenu", s:bg, s:accent)
call s:highlight_helper("ToolbarButton", s:bg, s:accent)
call s:highlight_helper("Question", s:accent, "")
call s:highlight_helper("MoreMsg", s:accent, "")
call s:highlight_helper("ModeMsg", s:accent, "")
call s:highlight_helper("StatusLine", s:accent, s:bg)
call s:highlight_helper("StatusLineTerm", s:accent, s:bg)
call s:highlight_helper("TabLineSel", s:accent, s:bg)
call s:highlight_helper("PmenuSel", s:bg_alt, s:accent)
call s:highlight_helper("PmenuThumb", s:accent, s:accent)
call s:highlight_helper("netrwTime", s:accent, "")
call s:highlight_helper("netrwSizeDate", s:accent, "")
call s:highlight_helper("CtrlPMatch", s:bg, s:accent)
call s:highlight_helper("gitcommitSummary", s:accent, "")

" VERSION CONTROL
call s:highlight_helper("DiffAdd", s:bg, s:accent)
call s:highlight_helper("DiffChange", s:bg, s:blue)
call s:highlight_helper("DiffDelete", s:red, "")
call s:highlight_helper("DiffText", s:bg, s:blue)
call s:highlight_helper("GitGutterAdd", s:accent, "")
call s:highlight_helper("GitGutterChange", s:blue, "")
call s:highlight_helper("GitGutterChangeDelete", s:blue, "")
call s:highlight_helper("GitGutterDelete", s:red, "")

" OTHER
call s:highlight_helper("LineNr", s:fg_alt, "")
call s:highlight_helper("CursorLine", "NONE", s:bg_alt)
call s:highlight_helper("CursorColumn", "NONE", s:bg_alt)
call s:highlight_helper("ColorColumn", "NONE", s:bg_alt)
call s:highlight_helper("EndOfBuffer", s:bg_alt, "")
call s:highlight_helper("VertSplit", s:bg, "")
call s:highlight_helper("StatusLineNC", s:fg_alt, s:bg)
call s:highlight_helper("StatusLineTermNC", s:fg_alt, s:bg)
call s:highlight_helper("TabLine", s:fg_alt, s:bg)
call s:highlight_helper("TabLineFill", s:bg, s:bg)
call s:highlight_helper("ToolbarLine", s:fg_alt, s:bg)
call s:highlight_helper("Pmenu", s:fg, s:bg_alt)
call s:highlight_helper("PmenuSbar", s:fg_alt, s:fg_alt)
call s:highlight_helper("fzf1", s:bg, s:bg_alt)
call s:highlight_helper("fzf2", s:bg, s:bg_alt)
call s:highlight_helper("fzf3", s:bg, s:bg_alt)
call s:highlight_helper("EasyMotionTarget", s:red, "")
call s:highlight_helper("EasyMotionTarget2First", s:accent, "")
call s:highlight_helper("EasyMotionTarget2Second", s:accent, "")


" ==================================================================
" SYNTAX GROUPS
" ==================================================================

" CONSTANT
call s:highlight_helper("Constant", s:accent, "")

" FUNCTION
call s:highlight_helper("Function", s:purple, "")

" STRING
call s:highlight_helper("String", s:blue, "")

" NUMBER
call s:highlight_helper("Number", s:blue, "")
call s:highlight_helper("Float", s:blue, "")
call s:highlight_helper("Boolean", s:blue, "")

" EXCEPTION
call s:highlight_helper("Exception", s:red, "")

" OPERATOR
call s:highlight_helper("Operator", s:purple, "")

" COMMENT
call s:highlight_helper("SpecialComment", s:fg_alt, "")
call s:highlight_helper("@comment.documentation", s:fg_alt, "")
call s:highlight_helper("@string.documentation", s:fg_alt, "")
call s:highlight_helper("Directory", s:accent, "")
call s:highlight_helper("jsObjectBraces", s:accent, "")
call s:highlight_helper("jsBrackets", s:accent, "")
call s:highlight_helper("jsBlock", s:accent, "")
call s:highlight_helper("jsFuncBlock", s:accent, "")
call s:highlight_helper("jsClassBlock", s:accent, "")
call s:highlight_helper("jsTryCatchBlock", s:accent, "")
call s:highlight_helper("jsIfElseBlock", s:accent, "")
call s:highlight_helper("jsFinallyBlock", s:accent, "")
call s:highlight_helper("jsSwitchBlock", s:accent, "")
call s:highlight_helper("jsRepeatBlock", s:accent, "")
call s:highlight_helper("jsObjectValue", s:accent, "")
call s:highlight_helper("jsClassValue", s:accent, "")
call s:highlight_helper("jsParen", s:accent, "")
call s:highlight_helper("jsParenSwitch", s:accent, "")
call s:highlight_helper("jsParenCatch", s:accent, "")
call s:highlight_helper("jsParenIfElse", s:accent, "")
call s:highlight_helper("jsParenRepeat", s:accent, "")
call s:highlight_helper("jsBracket", s:accent, "")
call s:highlight_helper("jsTernaryIf", s:accent, "")
call s:highlight_helper("jsTemplateString", s:blue, "")
call s:highlight_helper("jsTemplateVar", s:accent, "")
call s:highlight_helper("cssAttr", s:accent, "")
call s:highlight_helper("cssAttrRegion", s:accent, "")
call s:highlight_helper("cssAttributeSelector", s:accent, "")
call s:highlight_helper("htmlTitle", s:accent, "")
call s:highlight_helper("htmlH1", s:accent, "")
call s:highlight_helper("htmlH2", s:accent, "")
call s:highlight_helper("htmlH3", s:accent, "")
call s:highlight_helper("htmlH4", s:accent, "")
call s:highlight_helper("htmlH5", s:accent, "")
call s:highlight_helper("htmlH6", s:accent, "")
call s:highlight_helper("htmlLink", s:accent, "")
call s:highlight_helper("markdownCode", s:accent, "")
call s:highlight_helper("markdownCodeBlock", s:accent, "")
call s:highlight_helper("xmlString", s:blue, "")
call s:highlight_helper("netrwPlain", s:accent, "")
call s:highlight_helper("netrwDir", s:accent, "")
call s:highlight_helper("shDerefSimple", s:accent, "")
call s:highlight_helper("typescriptBracket", s:accent, "")
call s:highlight_helper("typescriptBlock", s:accent, "")
call s:highlight_helper("goConst", s:accent, "")

" IDENTIFIER
call s:highlight_helper("Identifier", s:blue, "")
call s:highlight_helper("jsVariableDef", s:blue, "")
call s:highlight_helper("jsObject", s:blue, "")
call s:highlight_helper("jsObjectKey", s:blue, "")
call s:highlight_helper("jsObjectKeyComputed", s:blue, "")
call s:highlight_helper("jsClassPropertyComputed", s:blue, "")
call s:highlight_helper("jsDestructuringPropertyComputed", s:blue, "")
call s:highlight_helper("jsDestructuringValue", s:blue, "")
call s:highlight_helper("jsFutureKeys", s:blue, "")
call s:highlight_helper("jsObjectProp", s:blue, "")
call s:highlight_helper("jsPrototype", s:blue, "")
call s:highlight_helper("jsObjectStringKey", s:blue, "")
call s:highlight_helper("jsFuncArgs", s:blue, "")
call s:highlight_helper("jsTaggedTemplate", s:blue, "")
call s:highlight_helper("jsDestructuringBlock", s:blue, "")
call s:highlight_helper("jsDestructuringArray", s:blue, "")
call s:highlight_helper("jsDestructuringPropertyValue", s:blue, "")
call s:highlight_helper("jsImportContainer", s:blue, "")
call s:highlight_helper("jsExportContainer", s:blue, "")
call s:highlight_helper("jsModuleGroup", s:blue, "")
call s:highlight_helper("jsModuleKeyword", s:blue, "")
call s:highlight_helper("javascriptHtmlEvents", s:blue, "")
call s:highlight_helper("javascriptDomElemAttrs", s:blue, "")
call s:highlight_helper("javascriptDomElemFuncs", s:blue, "")
call s:highlight_helper("cssClassName", s:blue, "")
call s:highlight_helper("cssIdentifier", s:blue, "")
call s:highlight_helper("htmlTagName", s:blue, "")
call s:highlight_helper("htmlSpecialTagName", s:blue, "")
call s:highlight_helper("htmlTag", s:blue, "")
call s:highlight_helper("htmlEndTag", s:blue, "")
call s:highlight_helper("jsonKeyword", s:blue, "")
call s:highlight_helper("xmlAttrib", s:blue, "")
call s:highlight_helper("netrwExe", s:blue, "")
call s:highlight_helper("shFunction", s:blue, "")
call s:highlight_helper("typescriptVariableDeclaration", s:blue, "")
call s:highlight_helper("typescriptCall", s:blue, "")
call s:highlight_helper("typescriptRef", s:blue, "")
call s:highlight_helper("typescriptVars", s:blue, "")
call s:highlight_helper("typescriptFunction", s:blue, "")

" STATEMENT
call s:highlight_helper("Statement", s:accent, "")
call s:highlight_helper("jsFuncCall", s:accent, "")
call s:highlight_helper("jsOperator", s:accent, "")
call s:highlight_helper("jsSpreadOperator", s:accent, "")
call s:highlight_helper("jsTemplateExpression", s:accent, "")
call s:highlight_helper("jsFuncArgExpression", s:accent, "")
call s:highlight_helper("jsSpreadExpression", s:blue, "")
call s:highlight_helper("jsRestExpression", s:blue, "")
call s:highlight_helper("cssFunctionName", s:purple, "")
call s:highlight_helper("cssProp", s:accent, "")
call s:highlight_helper("htmlArg", s:accent, "")
call s:highlight_helper("jsxRegion", s:accent, "")
call s:highlight_helper("xmlTag", s:accent, "")
call s:highlight_helper("xmlEndTag", s:accent, "")
call s:highlight_helper("xmlTagName", s:accent, "")
call s:highlight_helper("xmlEqual", s:accent, "")
call s:highlight_helper("shCmdSubRegion", s:accent, "")
call s:highlight_helper("typescriptOperator", s:accent, "")
call s:highlight_helper("typescriptOpSymbols", s:accent, "")
call s:highlight_helper("typescriptProp", s:accent, "")
call s:highlight_helper("typescriptInterpolation", s:accent, "")
call s:highlight_helper("typescriptEventListenerMethods", s:accent, "")
call s:highlight_helper("dockerfileKeyword", s:accent, "")

" TYPE
call s:highlight_helper("Type", s:accent, "")
call s:highlight_helper("jsFunction", s:purple, "")
call s:highlight_helper("jsFunctionKey", s:purple, "")
call s:highlight_helper("jsStorageClass", s:accent, "")
call s:highlight_helper("jsExportDefault", s:accent, "")
call s:highlight_helper("jsNan", s:purple, "")
call s:highlight_helper("shFunctionKey", s:purple, "")
call s:highlight_helper("jsFlowDefinition", s:accent, "")
call s:highlight_helper("jsFlowClassDef", s:accent, "")
call s:highlight_helper("jsFlowTypeStatement", s:accent, "")
call s:highlight_helper("jsFlowTypeKeyword", s:accent, "")
call s:highlight_helper("jsFlowImportType", s:purple, "")
call s:highlight_helper("jsFlowArgumentDef", s:accent, "")
call s:highlight_helper("jsFlowReturn", s:accent, "")
call s:highlight_helper("jsFlowFunctionGroup", s:purple, "")
call s:highlight_helper("jsFlowClassGroup", s:accent, "")
call s:highlight_helper("typescriptEnumKeyword", s:accent, "")
call s:highlight_helper("typescriptVariable", s:accent, "")
call s:highlight_helper("typescriptFuncKeyword", s:accent, "")
call s:highlight_helper("typescriptDefault", s:accent, "")
call s:highlight_helper("typescriptReserved", s:accent, "")
call s:highlight_helper("goDeclaration", s:accent, "")

" GLOBAL
call s:highlight_helper("PreProc", s:purple, "")
call s:highlight_helper("Keyword", s:accent, "")
call s:highlight_helper("jsGlobalObjects", s:purple, "")
call s:highlight_helper("jsThis", s:purple, "")
call s:highlight_helper("jsSwitchCase", s:purple, "")
call s:highlight_helper("jsParenDecorator", s:purple, "")
call s:highlight_helper("cssTagName", s:purple, "")
call s:highlight_helper("jsGlobalNodeObjects", s:purple, "")
call s:highlight_helper("cssFontDescriptor", s:purple, "")
call s:highlight_helper("typescriptGlobal", s:purple, "")
call s:highlight_helper("typescriptExport", s:purple, "")
call s:highlight_helper("typescriptImport", s:purple, "")
call s:highlight_helper("goPackage", s:purple, "")
call s:highlight_helper("goImport", s:purple, "")

" EMPHASIS
call s:highlight_helper("Underlined", s:purple, "")
call s:highlight_helper("markdownItalic", s:purple, "")
call s:highlight_helper("markdownBold", s:purple, "")
call s:highlight_helper("markdownBoldItalic", s:purple, "")

" SPECIAL
call s:highlight_helper("Special", s:accent, "")
call s:highlight_helper("SpecialKey", s:accent, "")
call s:highlight_helper("NonText", s:accent, "")
call s:highlight_helper("Title", s:accent, "")
call s:highlight_helper("jsBraces", s:accent, "")
call s:highlight_helper("jsFuncBraces", s:accent, "")
call s:highlight_helper("jsDestructuringBraces", s:accent, "")
call s:highlight_helper("jsClassBraces", s:accent, "")
call s:highlight_helper("jsParens", s:accent, "")
call s:highlight_helper("jsFuncParens", s:accent, "")
call s:highlight_helper("jsArrowFunction", s:purple, "")
call s:highlight_helper("jsModuleAsterisk", s:accent, "")
call s:highlight_helper("cssBraces", s:accent, "")
call s:highlight_helper("cssBraces", s:accent, "")
call s:highlight_helper("markdownHeadingDelimiter", s:accent, "")
call s:highlight_helper("markdownH1", s:accent, "")
call s:highlight_helper("markdownH2", s:accent, "")
call s:highlight_helper("markdownH3", s:accent, "")
call s:highlight_helper("markdownH4", s:accent, "")
call s:highlight_helper("markdownH5", s:accent, "")
call s:highlight_helper("markdownH6", s:accent, "")
call s:highlight_helper("markdownRule", s:accent, "")
call s:highlight_helper("markdownListMarker", s:accent, "")
call s:highlight_helper("markdownOrderedListMarker", s:accent, "")
call s:highlight_helper("markdownLinkText", s:accent, "")
call s:highlight_helper("markdownCodeDelimiter", s:accent, "")
call s:highlight_helper("netrwClassify", s:accent, "")
call s:highlight_helper("netrwVersion", s:accent, "")
call s:highlight_helper("netrwSpecial", s:accent, "")
call s:highlight_helper("typescriptParens", s:accent, "")
call s:highlight_helper("typescriptBraces", s:accent, "")
call s:highlight_helper("typescriptArrowFunc", s:accent, "")
call s:highlight_helper("typescriptPropietaryMethods", s:accent, "")
call s:highlight_helper("typescriptParen", s:accent, "")
call s:highlight_helper("CtrlPStats", s:accent, "")

" TRIVIAL
call s:highlight_helper("Comment", s:fg_alt, "")
call s:highlight_helper("Ignore", s:fg_alt, "")
call s:highlight_helper("Conceal", s:fg_alt, "")
call s:highlight_helper("Noise", s:fg_alt, "")
call s:highlight_helper("jsNoise", s:fg_alt, "")
call s:highlight_helper("jsFuncArgCommas", s:fg_alt, "")
call s:highlight_helper("cssClassNameDot", s:fg_alt, "")
call s:highlight_helper("jsonQuote", s:fg_alt, "")
call s:highlight_helper("shQuote", s:fg_alt, "")
call s:highlight_helper("typescriptEndColons", s:fg_alt, "")
call s:highlight_helper("typescriptTemplateSB", s:fg_alt, "")
call s:highlight_helper("typescriptCommentSkip", s:fg_alt, "")
call s:highlight_helper("typescriptDotNotation", s:fg_alt, "")
call s:highlight_helper("netrwSortBy", s:fg_alt, "")
call s:highlight_helper("netrwSortSeq", s:fg_alt, "")
call s:highlight_helper("netrwQuickHelp", s:fg_alt, "")
call s:highlight_helper("netrwCopyTgt", s:fg_alt, "")
call s:highlight_helper("netrwTreeBarSpace", s:fg_alt, "")
call s:highlight_helper("netrwSlash", s:fg_alt, "")
call s:highlight_helper("netrwCmdNote", s:fg_alt, "")
call s:highlight_helper("EasyMotionShade", s:fg_alt, "")


" ==================================================================
" LSP REFERENCE HIGHLIGHTING
" ==================================================================

call s:highlight_helper("LspReferenceText", "", s:cursor_line, "")
call s:highlight_helper("LspReferenceRead", "", s:cursor_line, "")
call s:highlight_helper("LspReferenceWrite", "", s:cursor_line, "")


" ==================================================================
" VARIABLES
" ==================================================================

" VIM TERMINAL MODE
let g:terminal_ansi_colors = [
\ s:bg,
\ s:red,
\ s:accent,
\ s:accent,
\ s:blue,
\ s:purple,
\ s:accent,
\ s:fg,
\ s:fg_alt,
\ s:accent,
\ s:accent,
\ s:accent,
\ s:blue,
\ s:purple,
\ s:accent,
\ s:white
\]

" NEOVIM TERMINAL MODE
let g:terminal_color_0 = s:bg
let g:terminal_color_1 = s:red
let g:terminal_color_2 = s:accent
let g:terminal_color_3 = s:accent
let g:terminal_color_4 = s:blue
let g:terminal_color_5 = s:purple
let g:terminal_color_6 = s:accent
let g:terminal_color_7 = s:fg
let g:terminal_color_8 = s:fg_alt
let g:terminal_color_9 = s:accent
let g:terminal_color_10 = s:accent
let g:terminal_color_11 = s:accent
let g:terminal_color_12 = s:blue
let g:terminal_color_13 = s:purple
let g:terminal_color_14 = s:accent
let g:terminal_color_15 = s:white

" FZF
let g:fzf_colors = {
\ "fg":      ["fg", "Normal"],
\ "bg":      ["bg", "Normal"],
\ "hl":      ["fg", "IncSearch"],
\ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
\ "bg+":     ["bg", "CursorLine", "CursorColumn"],
\ "hl+":     ["fg", "IncSearch"],
\ "info":    ["fg", "IncSearch"],
\ "border":  ["fg", "Ignore"],
\ "prompt":  ["fg", "Comment"],
\ "pointer": ["fg", "IncSearch"],
\ "marker":  ["fg", "IncSearch"],
\ "spinner": ["fg", "IncSearch"],
\ "header":  ["fg", "IncSearch"]
\}