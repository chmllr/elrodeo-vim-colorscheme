" Name:    Elrodeo (VSCode inspired)
" Author:  Christian Müller
" License: MIT
" Version: 5.0.1
" Description: Modern Neovim colorscheme based on VSCode ElRodeo theme

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'elrodeo'
set background=dark

" Terminal color support
if has('termguicolors')
  set termguicolors
endif

" Color palette from VSCode ElRodeo theme 
let s:colors = {
\ 'bg':           '#334042',
\ 'bg_alt':       '#455558',
\ 'fg':           '#c0c0c0',
\ 'fg_alt':       '#7a8590',
\ 'white':        '#ffffff',
\ 'accent':       '#2d9885',
\ 'blue':         '#8fbadb',
\ 'green':        '#96bdb4',
\ 'purple':       '#9470ff',
\ 'bright_green': '#20b070',
\ 'red':          '#e05252',
\ 'cursor_line':  '#394547',
\ }

" Utility function for setting highlights
function! s:Hi(group, fg, bg, attr)
  let l:cmd = 'highlight ' . a:group

  if !empty(a:fg)
    let l:cmd .= ' guifg=' . a:fg
  endif

  if !empty(a:bg)
    let l:cmd .= ' guibg=' . a:bg
  endif

  if !empty(a:attr)
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif

  execute l:cmd
endfunction

" Editor UI
call s:Hi('Normal',       s:colors.fg,       s:colors.bg,       '')
call s:Hi('NormalFloat',  s:colors.fg,       s:colors.bg_alt,   '')
call s:Hi('Cursor',       s:colors.bg,       s:colors.white,    '')
call s:Hi('CursorLine',   '',                s:colors.cursor_line, '')
call s:Hi('CursorLineNr', s:colors.accent,   s:colors.cursor_line, '')
call s:Hi('LineNr',       s:colors.fg_alt,   '',                '')
call s:Hi('SignColumn',   '',                s:colors.bg,       '')
call s:Hi('ColorColumn',  '',                s:colors.cursor_line, '')
call s:Hi('VertSplit',    s:colors.fg_alt,   '',                'none')
call s:Hi('StatusLine',   s:colors.fg,       s:colors.bg_alt,   'none')
call s:Hi('StatusLineNC', s:colors.fg_alt,   s:colors.bg,       'none')
call s:Hi('TabLine',      s:colors.fg_alt,   s:colors.bg_alt,   '')
call s:Hi('TabLineFill',  s:colors.fg_alt,   s:colors.bg_alt,   '')
call s:Hi('TabLineSel',   s:colors.fg,       s:colors.bg,       '')

" Visual and selection
call s:Hi('Visual',       '',                s:colors.bg_alt,   '')
call s:Hi('VisualNOS',    '',                s:colors.bg_alt,   '')
call s:Hi('Search',       s:colors.bg,       s:colors.accent,   '')
call s:Hi('IncSearch',    s:colors.bg,       s:colors.accent,   '')

" Popup menu
call s:Hi('Pmenu',        s:colors.fg,       s:colors.bg_alt,   '')
call s:Hi('PmenuSel',     s:colors.accent,   s:colors.bg,       '')
call s:Hi('PmenuSbar',    '',                s:colors.bg_alt,   '')
call s:Hi('PmenuThumb',   '',                s:colors.accent,   '')

" Folding
call s:Hi('Folded',       s:colors.fg_alt,   s:colors.bg_alt,   '')
call s:Hi('FoldColumn',   s:colors.fg_alt,   '',                '')

" Diff
call s:Hi('DiffAdd',      s:colors.bright_green, s:colors.bg_alt, '')
call s:Hi('DiffChange',   s:colors.blue,     s:colors.bg_alt,   '')
call s:Hi('DiffDelete',   s:colors.red,      s:colors.bg_alt,   '')
call s:Hi('DiffText',     s:colors.bg,       s:colors.accent,   '')

" Messages and prompts
call s:Hi('ErrorMsg',     s:colors.red,      s:colors.bg,       '')
call s:Hi('WarningMsg',   s:colors.blue,     s:colors.bg,       '')
call s:Hi('ModeMsg',      s:colors.accent,   '',                '')
call s:Hi('MoreMsg',      s:colors.accent,   '',                '')
call s:Hi('Question',     s:colors.accent,   '',                '')

" Misc
call s:Hi('MatchParen',   s:colors.bg,       s:colors.accent,   '')
call s:Hi('NonText',      s:colors.fg_alt,   '',                '')
call s:Hi('SpecialKey',   s:colors.fg_alt,   '',                '')
call s:Hi('Directory',    s:colors.accent,   '',                '')
call s:Hi('Title',        s:colors.accent,   '',                '')
call s:Hi('Conceal',      s:colors.fg_alt,   '',                '')

" Syntax highlighting
call s:Hi('Comment',        s:colors.fg_alt,     '',               'italic')
call s:Hi('Constant',       s:colors.green,      '',               '')
call s:Hi('String',         s:colors.blue,       '',               '')
call s:Hi('Character',      s:colors.blue,       '',               '')
call s:Hi('Number',         s:colors.green,      '',               '')
call s:Hi('Boolean',        s:colors.purple,     '',               '')
call s:Hi('Float',          s:colors.green,      '',               '')
call s:Hi('Identifier',     s:colors.fg,         '',               '')
call s:Hi('Function',       s:colors.purple,     '',               '')
call s:Hi('Statement',      s:colors.bright_green, '',             '')
call s:Hi('Conditional',    s:colors.bright_green, '',             '')
call s:Hi('Repeat',         s:colors.bright_green, '',             '')
call s:Hi('Label',          s:colors.purple,     '',               '')
call s:Hi('Operator',       s:colors.accent,     '',               '')
call s:Hi('Keyword',        s:colors.bright_green, '',             '')
call s:Hi('Exception',      s:colors.red,        '',               '')
call s:Hi('PreProc',        s:colors.purple,     '',               '')
call s:Hi('Include',        s:colors.purple,     '',               '')
call s:Hi('Define',         s:colors.purple,     '',               '')
call s:Hi('Macro',          s:colors.purple,     '',               '')
call s:Hi('PreCondit',      s:colors.purple,     '',               '')
call s:Hi('Type',           s:colors.accent,     '',               '')
call s:Hi('StorageClass',   s:colors.bright_green, '',             '')
call s:Hi('Structure',      s:colors.accent,     '',               '')
call s:Hi('Typedef',        s:colors.accent,     '',               '')
call s:Hi('Special',        s:colors.accent,     '',               '')
call s:Hi('SpecialChar',    s:colors.blue,       '',               '')
call s:Hi('Tag',            s:colors.accent,     '',               '')
call s:Hi('Delimiter',      s:colors.fg,         '',               '')
call s:Hi('SpecialComment', s:colors.fg_alt,     '',               'italic')
call s:Hi('Debug',          s:colors.red,        '',               '')
call s:Hi('Underlined',     s:colors.accent,     '',               'underline')
call s:Hi('Ignore',         s:colors.fg_alt,     '',               '')
call s:Hi('Error',          s:colors.red,        '',               '')
call s:Hi('Todo',           s:colors.bg,         s:colors.accent,  '')

" Modern Neovim features
" LSP
call s:Hi('LspReferenceText',                  '',                s:colors.bg_alt,     '')
call s:Hi('LspReferenceRead',                  '',                s:colors.bg_alt,     '')
call s:Hi('LspReferenceWrite',                 '',                s:colors.bg_alt,     '')
call s:Hi('LspSignatureActiveParameter',       s:colors.accent,   s:colors.bg_alt,     '')

" Diagnostics
call s:Hi('DiagnosticError',                   s:colors.red,      '',                  '')
call s:Hi('DiagnosticWarn',                    s:colors.blue,     '',                  '')
call s:Hi('DiagnosticInfo',                    s:colors.accent,   '',                  '')
call s:Hi('DiagnosticHint',                    s:colors.green,    '',                  '')
call s:Hi('DiagnosticSignError',               s:colors.red,      '',                  '')
call s:Hi('DiagnosticSignWarn',                s:colors.blue,     '',                  '')
call s:Hi('DiagnosticSignInfo',                s:colors.accent,   '',                  '')
call s:Hi('DiagnosticSignHint',                s:colors.green,    '',                  '')
call s:Hi('DiagnosticUnderlineError',          '',                '',                  'undercurl')
call s:Hi('DiagnosticUnderlineWarn',           '',                '',                  'undercurl')
call s:Hi('DiagnosticUnderlineInfo',           '',                '',                  'undercurl')
call s:Hi('DiagnosticUnderlineHint',           '',                '',                  'undercurl')

" Treesitter
call s:Hi('@variable',                         s:colors.fg,       '',                  '')
call s:Hi('@variable.builtin',                 s:colors.purple,   '',                  '')
call s:Hi('@variable.parameter',               s:colors.fg,       '',                  'italic')
call s:Hi('@variable.member',                  s:colors.accent,   '',                  '')
call s:Hi('@constant',                         s:colors.green,    '',                  '')
call s:Hi('@constant.builtin',                 s:colors.purple,   '',                  '')
call s:Hi('@constant.macro',                   s:colors.purple,   '',                  '')
call s:Hi('@module',                           s:colors.accent,   '',                  '')
call s:Hi('@module.builtin',                   s:colors.purple,   '',                  '')
call s:Hi('@label',                            s:colors.purple,   '',                  '')
call s:Hi('@string',                           s:colors.blue,     '',                  '')
call s:Hi('@string.documentation',             s:colors.blue,     '',                  'italic')
call s:Hi('@string.regexp',                    s:colors.green,    '',                  '')
call s:Hi('@string.escape',                    s:colors.accent,   '',                  '')
call s:Hi('@string.special',                   s:colors.accent,   '',                  '')
call s:Hi('@character',                        s:colors.blue,     '',                  '')
call s:Hi('@character.special',                s:colors.accent,   '',                  '')
call s:Hi('@boolean',                          s:colors.purple,   '',                  '')
call s:Hi('@number',                           s:colors.green,    '',                  '')
call s:Hi('@number.float',                     s:colors.green,    '',                  '')
call s:Hi('@type',                             s:colors.accent,   '',                  '')
call s:Hi('@type.builtin',                     s:colors.purple,   '',                  '')
call s:Hi('@type.definition',                  s:colors.accent,   '',                  '')
call s:Hi('@attribute',                        s:colors.purple,   '',                  '')
call s:Hi('@property',                         s:colors.accent,   '',                  '')
call s:Hi('@function',                         s:colors.purple,   '',                  '')
call s:Hi('@function.builtin',                 s:colors.purple,   '',                  '')
call s:Hi('@function.call',                    s:colors.purple,   '',                  '')
call s:Hi('@function.macro',                   s:colors.purple,   '',                  '')
call s:Hi('@method',                           s:colors.purple,   '',                  '')
call s:Hi('@method.call',                      s:colors.purple,   '',                  '')
call s:Hi('@constructor',                      s:colors.accent,   '',                  '')
call s:Hi('@operator',                         s:colors.accent,   '',                  '')
call s:Hi('@keyword',                          s:colors.bright_green, '',              '')
call s:Hi('@keyword.coroutine',                s:colors.bright_green, '',              '')
call s:Hi('@keyword.function',                 s:colors.bright_green, '',              '')
call s:Hi('@keyword.operator',                 s:colors.bright_green, '',              '')
call s:Hi('@keyword.return',                   s:colors.bright_green, '',              '')
call s:Hi('@keyword.exception',                s:colors.red,      '',                  '')
call s:Hi('@conditional',                      s:colors.bright_green, '',              '')
call s:Hi('@conditional.ternary',              s:colors.bright_green, '',              '')
call s:Hi('@repeat',                           s:colors.bright_green, '',              '')
call s:Hi('@debug',                            s:colors.red,      '',                  '')
call s:Hi('@exception',                        s:colors.red,      '',                  '')
call s:Hi('@include',                          s:colors.purple,   '',                  '')
call s:Hi('@preproc',                          s:colors.purple,   '',                  '')
call s:Hi('@define',                           s:colors.purple,   '',                  '')
call s:Hi('@macro',                            s:colors.purple,   '',                  '')
call s:Hi('@storageclass',                     s:colors.bright_green, '',              '')
call s:Hi('@structure',                        s:colors.accent,   '',                  '')
call s:Hi('@namespace',                        s:colors.accent,   '',                  '')
call s:Hi('@annotation',                       s:colors.purple,   '',                  '')
call s:Hi('@error',                            s:colors.red,      '',                  '')
call s:Hi('@warning',                          s:colors.blue,     '',                  '')
call s:Hi('@danger',                           s:colors.red,      '',                  '')
call s:Hi('@note',                             s:colors.accent,   '',                  '')

" Git signs
call s:Hi('GitSignsAdd',                       s:colors.bright_green, '',              '')
call s:Hi('GitSignsChange',                    s:colors.blue,     '',                  '')
call s:Hi('GitSignsDelete',                    s:colors.red,      '',                  '')

" Telescope
call s:Hi('TelescopeBorder',                   s:colors.fg_alt,   '',                  '')
call s:Hi('TelescopePromptBorder',             s:colors.accent,   '',                  '')
call s:Hi('TelescopeResultsBorder',            s:colors.fg_alt,   '',                  '')
call s:Hi('TelescopePreviewBorder',            s:colors.fg_alt,   '',                  '')
call s:Hi('TelescopeMatching',                 s:colors.accent,   '',                  '')
call s:Hi('TelescopeSelection',                '',                s:colors.bg_alt,     '')
call s:Hi('TelescopeSelectionCaret',           s:colors.accent,   s:colors.bg_alt,     '')

" NvimTree
call s:Hi('NvimTreeNormal',                    s:colors.fg,       s:colors.bg,         '')
call s:Hi('NvimTreeFolderIcon',                s:colors.accent,   '',                  '')
call s:Hi('NvimTreeFolderName',                s:colors.accent,   '',                  '')
call s:Hi('NvimTreeOpenedFolderName',          s:colors.accent,   '',                  '')
call s:Hi('NvimTreeSymlink',                   s:colors.blue,     '',                  'italic')
call s:Hi('NvimTreeExecFile',                  s:colors.bright_green, '',              '')
call s:Hi('NvimTreeSpecialFile',               s:colors.purple,   '',                  '')
call s:Hi('NvimTreeImageFile',                 s:colors.blue,     '',                  '')

" Which-key
call s:Hi('WhichKey',                          s:colors.accent,   '',                  '')
call s:Hi('WhichKeyGroup',                     s:colors.purple,   '',                  '')
call s:Hi('WhichKeyDesc',                      s:colors.fg,       '',                  '')
call s:Hi('WhichKeySeperator',                 s:colors.fg_alt,   '',                  '')
call s:Hi('WhichKeySeparator',                 s:colors.fg_alt,   '',                  '')
call s:Hi('WhichKeyFloat',                     s:colors.fg,       s:colors.bg_alt,     '')
call s:Hi('WhichKeyValue',                     s:colors.green,    '',                  '')

" Essential legacy highlighting for compatibility
call s:Hi('htmlTag',            s:colors.accent,     '',                  '')
call s:Hi('htmlTagName',        s:colors.purple,     '',                  '')
call s:Hi('htmlArg',            s:colors.accent,     '',                  '')
call s:Hi('markdownCode',       s:colors.green,      '',                  '')
call s:Hi('markdownCodeBlock',  s:colors.green,      '',                  '')
call s:Hi('markdownH1',         s:colors.accent,     '',                  '')
call s:Hi('markdownH2',         s:colors.accent,     '',                  '')
call s:Hi('markdownLinkText',   s:colors.blue,       '',                  '')
call s:Hi('markdownListMarker', s:colors.accent,     '',                  '')

" Spell checking
call s:Hi('SpellBad',           '',                  '',                  'undercurl')
call s:Hi('SpellLocal',         '',                  '',                  'undercurl')
call s:Hi('SpellCap',           '',                  '',                  'undercurl')
call s:Hi('SpellRare',          '',                  '',                  'undercurl')

" Terminal colors (for :terminal)
let g:terminal_color_0  = s:colors.bg
let g:terminal_color_1  = s:colors.red
let g:terminal_color_2  = s:colors.bright_green
let g:terminal_color_3  = s:colors.blue
let g:terminal_color_4  = s:colors.blue
let g:terminal_color_5  = s:colors.purple
let g:terminal_color_6  = s:colors.accent
let g:terminal_color_7  = s:colors.fg
let g:terminal_color_8  = s:colors.fg_alt
let g:terminal_color_9  = s:colors.red
let g:terminal_color_10 = s:colors.bright_green
let g:terminal_color_11 = s:colors.blue
let g:terminal_color_12 = s:colors.blue
let g:terminal_color_13 = s:colors.purple
let g:terminal_color_14 = s:colors.accent
let g:terminal_color_15 = s:colors.white
