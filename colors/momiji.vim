" 'momiji.vim' -- Vim color scheme.
" Maintainer:   kyoh86 (me@kyoh86.dev)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/kyoh86/momiji

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name='momiji'

if !has('gui_running') && &t_Co != 256
  finish
endif

let g:momiji_colors = {}
let g:momiji_colors['black'] =         '#140c0c'
let g:momiji_colors['red'] =           '#da5774'
let g:momiji_colors['green'] =         '#348c4e'
let g:momiji_colors['yellow'] =        '#e7a82b'
let g:momiji_colors['blue'] =          '#4884d2'
let g:momiji_colors['magenta'] =       '#a55aaa'
let g:momiji_colors['cyan'] =          '#1f90a8'
let g:momiji_colors['white'] =         '#a09999'
let g:momiji_colors['brightblack'] =   '#5a4e4e'
let g:momiji_colors['brightred'] =     '#f5875b'
let g:momiji_colors['brightgreen'] =   '#9abe86'
let g:momiji_colors['brightyellow'] =  '#ffd791'
let g:momiji_colors['brightblue'] =    '#89b7e1'
let g:momiji_colors['brightmagenta'] = '#eea1d1'
let g:momiji_colors['brightcyan'] =    '#69b2ac'
let g:momiji_colors['brightwhite'] =   '#e6e3e3'
let g:momiji_colors['gradation1'] =    '#372a2a'
let g:momiji_colors['gradation2'] =    '#5a4e4e'
let g:momiji_colors['gradation3'] =    '#7d7373'
let g:momiji_colors['gradation4'] =    '#a09999'
let g:momiji_colors['gradation5'] =    '#c3bebe'

let g:momiji_palette = {}
let g:momiji_palette['black'] =        [g:momiji_colors.black,        0]
let g:momiji_palette['red'] =          [g:momiji_colors.red,          1]
let g:momiji_palette['green'] =        [g:momiji_colors.green,        2]
let g:momiji_palette['yellow'] =       [g:momiji_colors.yellow,       3]
let g:momiji_palette['blue'] =         [g:momiji_colors.blue,         4]
let g:momiji_palette['magenta'] =      [g:momiji_colors.magenta,      5]
let g:momiji_palette['cyan'] =         [g:momiji_colors.cyan,         6]
let g:momiji_palette['white'] =        [g:momiji_colors.white,        7]
let g:momiji_palette['brightblack'] =   [g:momiji_colors.brightblack,   8]
let g:momiji_palette['brightred'] =     [g:momiji_colors.brightred,     9]
let g:momiji_palette['brightgreen'] =   [g:momiji_colors.brightgreen,   10]
let g:momiji_palette['brightyellow'] =  [g:momiji_colors.brightyellow,  11]
let g:momiji_palette['brightblue'] =    [g:momiji_colors.brightblue,    12]
let g:momiji_palette['brightmagenta'] = [g:momiji_colors.brightmagenta, 13]
let g:momiji_palette['brightcyan'] =    [g:momiji_colors.brightcyan,    14]
let g:momiji_palette['brightwhite'] =   [g:momiji_colors.brightwhite,   15]
let g:momiji_palette['gradation1'] =   [g:momiji_colors.gradation1,   235]
let g:momiji_palette['gradation2'] =   [g:momiji_colors.gradation2,   236]
let g:momiji_palette['gradation3'] =   [g:momiji_colors.gradation3,   237]
let g:momiji_palette['gradation4'] =   [g:momiji_colors.gradation4,   238]
let g:momiji_palette['gradation5'] =   [g:momiji_colors.gradation5,   239]

" Momiji Hi Groups:
" memoize common hi groups
highlight MomijiWhite guifg=#a09999 ctermfg=7
highlight MomijiRed guifg=#da5774 ctermfg=1
highlight MomijiGreen guifg=#348c4e ctermfg=2
highlight MomijiYellow guifg=#e7a82b ctermfg=3
highlight MomijiBlue guifg=#4884d2 ctermfg=4
highlight MomijiMagenta guifg=#a55aaa ctermfg=5
highlight MomijiCyan guifg=#1f90a8 ctermfg=6
highlight MomijiBlack guifg=#140c0c ctermfg=0
highlight MomijiRedBold guifg=#da5774 ctermfg=1 gui=bold cterm=bold
highlight MomijiGreenBold guifg=#348c4e ctermfg=2 gui=bold cterm=bold
highlight MomijiYellowBold guifg=#e7a82b ctermfg=3 gui=bold cterm=bold
highlight MomijiBlueBold guifg=#4884d2 ctermfg=4 gui=bold cterm=bold
highlight MomijiMagentaBold guifg=#a55aaa ctermfg=5 gui=bold cterm=bold
highlight MomijiCyanBold guifg=#1f90a8 ctermfg=6 gui=bold cterm=bold

highlight MomijiBrightRed guifg=#f5875b ctermfg=9
highlight MomijiBrightGreen guifg=#9abe86 ctermfg=10
highlight MomijiBrightYellow guifg=#ffd791 ctermfg=11
highlight MomijiBrightBlue guifg=#89b7e1 ctermfg=12
highlight MomijiBrightMagenta guifg=#eea1d1 ctermfg=13
highlight MomijiBrightCyan guifg=#69b2ac ctermfg=14
highlight MomijiBrightBlack guifg=#5a4e4e ctermfg=8
highlight MomijiBrightWhite guifg=#e6e3e3 ctermfg=15

" special
highlight MomijiBrightRedBold guifg=#f5875b ctermfg=9 gui=bold cterm=bold
highlight MomijiGradation1 guifg=#372a2a ctermfg=235
highlight MomijiGradation2 guifg=#5a4e4e ctermfg=236
highlight MomijiGradation3 guifg=#7d7373 ctermfg=237
highlight MomijiGradation4 guifg=#a09999 ctermfg=238
highlight MomijiGradation5 guifg=#c3bebe ctermfg=239

" General UI:
" Normal text
highlight! Normal NONE
highlight Normal guifg=#e6e3e3 ctermfg=15 guibg=#140c0c ctermbg=0
highlight! NormalFloat NONE
highlight NormalFloat guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235

" Screen line that the cursor is
highlight! CursorLine NONE
highlight CursorLine guibg=#372a2a ctermbg=235
" Screen column that the cursor is
highlight! CursorColumn NONE
highlight CursorColumn guibg=#5a4e4e ctermbg=236

" Tab pages line filler
highlight! TabLineFill NONE
highlight TabLineFill guifg=#348c4e ctermfg=2 guibg=#140c0c ctermbg=0
" Active tab page label
highlight! TabLineSel NONE
highlight TabLineSel guifg=#da5774 ctermfg=1 guibg=#140c0c ctermbg=0 gui=bold cterm=bold
" Not active tab page label
highlight! TabLine NONE
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
highlight! MatchParen NONE
highlight MatchParen guifg=#140c0c ctermfg=0 guibg=#89b7e1 ctermbg=12 gui=bold cterm=bold

" Highlighted screen columns
highlight! ColorColumn NONE
highlight ColorColumn guibg=#5a4e4e ctermbg=236

" Concealed element: \lambda → λ
highlight! Conceal NONE
highlight Conceal guifg=#4884d2 ctermfg=4

highlight! Delimiter NONE
highlight! Delimiter guifg=#e6e3e3 ctermfg=15

highlight! NonText NONE
highlight! NonText guifg=#5a4e4e ctermfg=236
highlight! SpecialKey NONE
highlight! SpecialKey guifg=#5a4e4e ctermfg=236
highlight! Whitespace NONE
highlight! Whitespace guifg=#5a4e4e ctermfg=236

highlight! Visual NONE
highlight Visual guifg=#140c0c ctermfg=0 guibg=#e7a82b ctermbg=3
highlight! VisualNOS NONE
highlight! link VisualNOS Visual

highlight! Search NONE
highlight Search guifg=#140c0c ctermfg=0 guibg=#89b7e1 ctermbg=12
highlight! IncSearch NONE
highlight IncSearch None
highlight! IncSearch NONE
highlight IncSearch guifg=#140c0c ctermfg=0 guibg=#eea1d1 ctermbg=13
highlight! CurSearch NONE
highlight CurSearch None
highlight! CurSearch NONE
highlight CurSearch guifg=#140c0c ctermfg=0 guibg=#9abe86 ctermbg=10
highlight! Substitute NONE
highlight Substitute None
highlight! Substitute NONE
highlight Substitute guifg=#140c0c ctermfg=0 guibg=#eea1d1 ctermbg=13

highlight! Underlined NONE
highlight Underlined guifg=#4884d2 ctermfg=4 gui=underline cterm=underline

highlight! StatusLine NONE
highlight StatusLine guifg=#e6e3e3 ctermfg=15 guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
highlight! StatusLineNC NONE
highlight StatusLineNC guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235 gui=underline cterm=underline

" The column separating vertically split windows
highlight! VertSplit NONE
highlight VertSplit guifg=#a09999 ctermfg=238 gui=bold cterm=bold

" Current match in wildmenu completion
highlight! WildMenu NONE
highlight WildMenu guifg=#4884d2 ctermfg=4 guibg=#140c0c ctermbg=0 gui=bold cterm=bold

" Directory names, special names in listing
highlight! Directory NONE
highlight! Directory guifg=#348c4e ctermfg=2 gui=bold cterm=bold

" Titles for output from :set all, :autocmd, etc.
highlight! Title NONE
highlight! Title guifg=#e7a82b ctermfg=3 gui=bold cterm=bold

" Error messages on the command line
highlight! ErrorMsg NONE
highlight ErrorMsg guifg=#e6e3e3 ctermfg=15 guibg=#da5774 ctermbg=1
" More prompt: -- More --
highlight! MoreMsg NONE
highlight! MoreMsg guifg=#e7a82b ctermfg=3 gui=bold cterm=bold
" Current mode message: -- INSERT --
highlight! ModeMsg NONE
highlight! ModeMsg guifg=#e7a82b ctermfg=3 gui=bold cterm=bold
" 'Press enter' prompt and yes/no questions
highlight! Question NONE
highlight! Question guifg=#f5875b ctermfg=9 gui=bold cterm=bold
" Warning messages
highlight! WarningMsg NONE
highlight! WarningMsg guifg=#da5774 ctermfg=1 gui=bold cterm=bold
" Gutter:
" Line number for :number and :# commands
highlight! LineNr NONE
highlight LineNr guifg=#a09999 ctermfg=238 guibg=#372a2a ctermbg=235

" Line number of CursorLine
highlight! CursorLineNr NONE
highlight CursorLineNr guifg=#140c0c ctermfg=0 guibg=#4884d2 ctermbg=4 gui=bold cterm=bold

if hlexists('LineNrAbove')
  highlight! LineNrAbove NONE
  highlight LineNrAbove guifg=#eea1d1 ctermfg=13 guibg=#372a2a ctermbg=235
  highlight! LineNrBelow NONE
  highlight LineNrBelow guifg=#9abe86 ctermfg=10 guibg=#372a2a ctermbg=235
endif

" Column where signs are displayed
highlight! SignColumn NONE
highlight SignColumn guibg=#372a2a ctermbg=235

" Line used for closed folds
highlight! Folded NONE
highlight Folded guifg=#a09999 ctermfg=238 gui=italic cterm=italic
" Column where folds are displayed
highlight! FoldColumn NONE
highlight FoldColumn guifg=#a09999 ctermfg=238 guibg=#140c0c ctermbg=0
" Cursor:
" Character under cursor
highlight! Cursor NONE
highlight Cursor guifg=#140c0c ctermfg=0 guibg=#ffd791 ctermbg=11
" Character under cursor in a focused terminal
highlight! TermCursor NONE
highlight link TermCursor Cursor
" Cursor in an unfocused terminal
highlight! TermCursorNC NONE
highlight link TermCursorNC Cursor
" Visual mode cursor, selection
highlight! vCursor NONE
highlight link vCursor Cursor
" Input moder cursor
highlight! iCursor NONE
highlight! link iCursor Cursor
" Language mapping cursor
highlight! lCursor NONE
highlight! link lCursor Cursor
" Syntax Highlighting:
highlight! Special NONE
highlight! Special guifg=#ffd791 ctermfg=11 gui=bold cterm=bold

highlight! Comment NONE
highlight Comment guifg=#7d7373 ctermfg=237 gui=italic cterm=italic
highlight! Todo NONE
highlight Todo guifg=#e6e3e3 ctermfg=15 gui=bold,italic cterm=bold,italic
highlight! Error NONE
highlight Error guifg=#f5875b ctermfg=9 gui=bold,inverse cterm=bold,inverse

" String constant: "this is a string"
highlight! String NONE
highlight String guifg=#348c4e ctermfg=2

" Generic statement
highlight! Statement NONE
highlight! Statement guifg=#e7a82b ctermfg=3
" if, then, else, endif, swicth, etc.
highlight! Conditional NONE
highlight! Conditional guifg=#e7a82b ctermfg=3
" for, do, while, etc.
highlight! Repeat NONE
highlight! Repeat guifg=#e7a82b ctermfg=3
" case, default, etc.
highlight! Label NONE
highlight! Label guifg=#e7a82b ctermfg=3
" try, catch, throw
highlight! Exception NONE
highlight! Exception guifg=#da5774 ctermfg=1
" sizeof, "+", "*", etc.
highlight! Operator NONE
highlight! link Operator None
" Any other keyword
highlight! Keyword NONE
highlight! Keyword guifg=#da5774 ctermfg=1

" Variable name
highlight! Identifier NONE
highlight! Identifier guifg=#89b7e1 ctermfg=12
" Function name
highlight! Function NONE
highlight! Function guifg=#4884d2 ctermfg=4

" Generic preprocessor
highlight! PreProc NONE
highlight! PreProc guifg=#a55aaa ctermfg=5
" Preprocessor #include
highlight! Include NONE
highlight! Include guifg=#a55aaa ctermfg=5
" Preprocessor #define
highlight! Define NONE
highlight! Define guifg=#a55aaa ctermfg=5
" Same as Define
highlight! Macro NONE
highlight! Macro guifg=#a55aaa ctermfg=5
" Preprocessor #if, #else, #endif, etc.
highlight! PreCondit NONE
highlight! PreCondit guifg=#a55aaa ctermfg=5

" Generic constant
highlight! Constant NONE
highlight! Constant guifg=#eea1d1 ctermfg=13
" Character constant: 'c', '/n'
highlight! Character NONE
highlight! Character guifg=#eea1d1 ctermfg=13
" Boolean constant: TRUE, false
highlight! Boolean NONE
highlight! Boolean guifg=#eea1d1 ctermfg=13
" Number constant: 234, 0xff
highlight! Number NONE
highlight! Number guifg=#eea1d1 ctermfg=13
" Floating point constant: 2.3e10
highlight! Float NONE
highlight! Float guifg=#eea1d1 ctermfg=13

" Generic type
highlight! Type NONE
highlight! Type guifg=#1f90a8 ctermfg=6
" static, register, volatile, etc
highlight! StorageClass NONE
highlight! StorageClass guifg=#1f90a8 ctermfg=6
" struct, union, enum, etc.
highlight! Structure NONE
highlight! Structure guifg=#f5875b ctermfg=9
" typedef
highlight! Typedef NONE
highlight! Typedef guifg=#f5875b ctermfg=9
" Completion Menu:
" Popup menu: normal item
highlight! Pmenu NONE
highlight Pmenu guibg=#372a2a ctermbg=235
" Popup menu: selected item
highlight! PmenuSel NONE
highlight PmenuSel guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
" Popup menu: scrollbar
highlight! PmenuSbar NONE
highlight PmenuSbar guibg=#5a4e4e ctermbg=236
" Popup menu: scrollbar thumb
highlight! PmenuThumb NONE
highlight PmenuThumb guibg=#5a4e4e ctermbg=236
" Quickfix
highlight! QuickFixLine NONE
highlight QuickFixLine guifg=#1f90a8 ctermfg=6 gui=bold cterm=bold
" Diffs:
highlight! DiffDelete NONE
highlight DiffDelete guifg=#f5875b ctermfg=9 guibg=#140c0c ctermbg=0
highlight! DiffAdd NONE
highlight DiffAdd guifg=#9abe86 ctermfg=10 guibg=#140c0c ctermbg=0
highlight! DiffChange NONE
highlight DiffChange guifg=#1f90a8 ctermfg=6 guibg=#140c0c ctermbg=0
highlight! DiffText NONE
highlight DiffText guifg=#ffd791 ctermfg=11 guibg=#140c0c ctermbg=0
highlight! Added NONE
highlight! link Added DiffAdd
highlight! Changed NONE
highlight! link Changed DiffChange
highlight! Removed NONE
highlight! link Removed DiffDelete
" Spelling:
if has("spell")
  " Not capitalised word, or compile warnings
  highlight! SpellCap NONE
  highlight SpellCap gui=undercurl cterm=undercurl guisp=#4884d2
  " Not recognized word
  highlight! SpellBad NONE
  highlight SpellBad gui=undercurl cterm=undercurl guisp=#4884d2
  " Wrong spelling for selected region
  highlight! SpellLocal NONE
  highlight SpellLocal gui=undercurl cterm=undercurl guisp=#1f90a8
  " Rare word
  highlight! SpellRare NONE
  highlight SpellRare gui=undercurl cterm=undercurl guisp=#a55aaa
endif

if hlexists('FloatBorder')
  highlight! FloatBorder NONE
  highlight FloatBorder None
  highlight! FloatBorder NONE
  highlight FloatBorder guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235 gui=bold cterm=bold
  highlight! FloatShadow NONE
  highlight FloatShadow None
  highlight! FloatShadow NONE
  highlight FloatShadow guibg=#372a2a ctermbg=235
endif

if hlexists('DiagnosticInfo')
  highlight! DiagnosticDeprecated NONE
  highlight DiagnosticDeprecated cterm=strikethrough gui=strikethrough guisp=Red
  highlight! DiagnosticOk NONE
  highlight DiagnosticOk    guifg=#9abe86 ctermfg=10
  highlight! DiagnosticHint NONE
  highlight DiagnosticHint  guifg=#7d7373 ctermfg=237
  highlight! DiagnosticInfo NONE
  highlight DiagnosticInfo  guifg=#89b7e1 ctermfg=12
  highlight! DiagnosticWarn NONE
  highlight DiagnosticWarn  guifg=#f5875b ctermfg=9
  highlight! DiagnosticError NONE
  highlight DiagnosticError guifg=#da5774 ctermfg=1
  highlight! DiagnosticUnderlineOk NONE
  highlight DiagnosticUnderlineOk gui=underline cterm=underline guisp=#9abe86
  highlight! DiagnosticUnderlineHint NONE
  highlight DiagnosticUnderlineHint gui=underline cterm=underline guisp=#7d7373
  highlight! DiagnosticUnderlineInfo NONE
  highlight DiagnosticUnderlineInfo gui=underline cterm=underline guisp=#89b7e1
  highlight! DiagnosticUnderlineWarn NONE
  highlight DiagnosticUnderlineWarn gui=underline cterm=underline guisp=#f5875b
  highlight! DiagnosticUnderlineError NONE
  highlight DiagnosticUnderlineError gui=underline cterm=underline guisp=#da5774
endif

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
