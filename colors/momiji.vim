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
highlight Normal guifg=#e6e3e3 ctermfg=15 guibg=#140c0c ctermbg=0
highlight NormalFloat guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235

" Screen line that the cursor is
highlight! CursorLine NONE
highlight CursorLine guibg=#372a2a ctermbg=235
" Screen column that the cursor is
highlight CursorColumn guibg=#5a4e4e ctermbg=236

" Tab pages line filler
highlight TabLineFill guifg=#348c4e ctermfg=2 guibg=#140c0c ctermbg=0
" Active tab page label
highlight TabLineSel guifg=#da5774 ctermfg=1 guibg=#140c0c ctermbg=0 gui=bold cterm=bold
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
highlight MatchParen guifg=#e7a82b ctermfg=3 guibg=#f5875b ctermbg=9 gui=bold cterm=bold

" Highlighted screen columns
highlight ColorColumn guibg=#5a4e4e ctermbg=236

" Concealed element: \lambda → λ
highlight Conceal guifg=#4884d2 ctermfg=4

highlight! Delimiter guifg=#e6e3e3 ctermfg=15

highlight! NonText guifg=#5a4e4e ctermfg=236
highlight! SpecialKey guifg=#5a4e4e ctermfg=236
highlight! Whitespace guifg=#5a4e4e ctermfg=236

highlight Visual guifg=#140c0c ctermfg=0 guibg=#e7a82b ctermbg=3
highlight! link VisualNOS Visual

highlight Search guifg=#140c0c ctermfg=0 guibg=#89b7e1 ctermbg=12
highlight IncSearch None
highlight IncSearch guifg=#140c0c ctermfg=0 guibg=#eea1d1 ctermbg=13
highlight CurSearch None
highlight CurSearch guifg=#140c0c ctermfg=0 guibg=#9abe86 ctermbg=10
highlight Substitute None
highlight Substitute guifg=#140c0c ctermfg=0 guibg=#eea1d1 ctermbg=13

highlight Underlined guifg=#4884d2 ctermfg=4 gui=underline cterm=underline

highlight StatusLine guifg=#e6e3e3 ctermfg=15 guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
highlight StatusLineNC guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235 gui=underline cterm=underline

" The column separating vertically split windows
highlight VertSplit guifg=#a09999 ctermfg=238 gui=bold cterm=bold

" Current match in wildmenu completion
highlight WildMenu guifg=#4884d2 ctermfg=4 guibg=#140c0c ctermbg=0 gui=bold cterm=bold

" Directory names, special names in listing
highlight! Directory guifg=#348c4e ctermfg=2 gui=bold cterm=bold

" Titles for output from :set all, :autocmd, etc.
highlight! Title guifg=#e7a82b ctermfg=3 gui=bold cterm=bold

" Error messages on the command line
highlight ErrorMsg guifg=#e6e3e3 ctermfg=15 guibg=#da5774 ctermbg=1
" More prompt: -- More --
highlight! MoreMsg guifg=#e7a82b ctermfg=3 gui=bold cterm=bold
" Current mode message: -- INSERT --
highlight! ModeMsg guifg=#e7a82b ctermfg=3 gui=bold cterm=bold
" 'Press enter' prompt and yes/no questions
highlight! Question guifg=#f5875b ctermfg=9 gui=bold cterm=bold
" Warning messages
highlight! WarningMsg guifg=#da5774 ctermfg=1 gui=bold cterm=bold
" Gutter:
" Line number for :number and :# commands
highlight LineNr guifg=#a09999 ctermfg=238 guibg=#372a2a ctermbg=235

" Line number of CursorLine
highlight CursorLineNr guifg=#140c0c ctermfg=0 guibg=#4884d2 ctermbg=4 gui=bold cterm=bold

if hlexists('LineNrAbove')
  highlight LineNrAbove guifg=#eea1d1 ctermfg=13 guibg=#372a2a ctermbg=235
  highlight LineNrBelow guifg=#9abe86 ctermfg=10 guibg=#372a2a ctermbg=235
endif

" Column where signs are displayed
highlight SignColumn guibg=#372a2a ctermbg=235

" Line used for closed folds
highlight Folded guifg=#a09999 ctermfg=238 gui=italic cterm=italic
" Column where folds are displayed
highlight FoldColumn guifg=#a09999 ctermfg=238 guibg=#140c0c ctermbg=0
" Cursor:
" Character under cursor
highlight Cursor guifg=#140c0c ctermfg=0 guibg=#ffd791 ctermbg=11
" Character under cursor in a focused terminal
highlight link TermCursor Cursor
" Cursor in an unfocused terminal
highlight link TermCursorNC Cursor
" Visual mode cursor, selection
highlight link vCursor Cursor
" Input moder cursor
highlight! link iCursor Cursor
" Language mapping cursor
highlight! link lCursor Cursor
" Syntax Highlighting:
highlight! Special guifg=#ffd791 ctermfg=11 gui=bold cterm=bold

highlight Comment guifg=#7d7373 ctermfg=237 gui=italic cterm=italic
highlight Todo guifg=#e6e3e3 ctermfg=15 gui=bold,italic cterm=bold,italic
highlight Error guifg=#f5875b ctermfg=9 gui=bold,inverse cterm=bold,inverse

" String constant: "this is a string"
highlight String guifg=#348c4e ctermfg=2

" Generic statement
highlight! Statement guifg=#e7a82b ctermfg=3
" if, then, else, endif, swicth, etc.
highlight! Conditional guifg=#e7a82b ctermfg=3
" for, do, while, etc.
highlight! Repeat guifg=#e7a82b ctermfg=3
" case, default, etc.
highlight! Label guifg=#e7a82b ctermfg=3
" try, catch, throw
highlight! Exception guifg=#da5774 ctermfg=1
" sizeof, "+", "*", etc.
highlight! link Operator None
" Any other keyword
highlight! Keyword guifg=#da5774 ctermfg=1

" Variable name
highlight! Identifier guifg=#89b7e1 ctermfg=12
" Function name
highlight! Function guifg=#4884d2 ctermfg=4

" Generic preprocessor
highlight! PreProc guifg=#a55aaa ctermfg=5
" Preprocessor #include
highlight! Include guifg=#a55aaa ctermfg=5
" Preprocessor #define
highlight! Define guifg=#a55aaa ctermfg=5
" Same as Define
highlight! Macro guifg=#a55aaa ctermfg=5
" Preprocessor #if, #else, #endif, etc.
highlight! PreCondit guifg=#a55aaa ctermfg=5

" Generic constant
highlight! Constant guifg=#eea1d1 ctermfg=13
" Character constant: 'c', '/n'
highlight! Character guifg=#eea1d1 ctermfg=13
" Boolean constant: TRUE, false
highlight! Boolean guifg=#eea1d1 ctermfg=13
" Number constant: 234, 0xff
highlight! Number guifg=#eea1d1 ctermfg=13
" Floating point constant: 2.3e10
highlight! Float guifg=#eea1d1 ctermfg=13

" Generic type
highlight! Type guifg=#1f90a8 ctermfg=6
" static, register, volatile, etc
highlight! StorageClass guifg=#1f90a8 ctermfg=6
" struct, union, enum, etc.
highlight! Structure guifg=#f5875b ctermfg=9
" typedef
highlight! Typedef guifg=#f5875b ctermfg=9
" Completion Menu:
" Popup menu: normal item
highlight Pmenu guibg=#372a2a ctermbg=235
" Popup menu: selected item
highlight PmenuSel guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
" Popup menu: scrollbar
highlight PmenuSbar guibg=#5a4e4e ctermbg=236
" Popup menu: scrollbar thumb
highlight PmenuThumb guibg=#5a4e4e ctermbg=236
" Quickfix
highlight QuickFixLine guifg=#1f90a8 ctermfg=6 gui=bold cterm=bold
" Diffs:
highlight DiffDelete guifg=#f5875b ctermfg=9 guibg=#140c0c ctermbg=0
highlight DiffAdd guifg=#9abe86 ctermfg=10 guibg=#140c0c ctermbg=0
highlight DiffChange guifg=#1f90a8 ctermfg=6 guibg=#140c0c ctermbg=0
highlight DiffText guifg=#ffd791 ctermfg=11 guibg=#140c0c ctermbg=0
highlight! link Added DiffAdd
highlight! link Changed DiffChange
highlight! link Removed DiffDelete
" Spelling:
if has("spell")
  " Not capitalised word, or compile warnings
  highlight SpellCap gui=undercurl cterm=undercurl guisp=#4884d2
  " Not recognized word
  highlight SpellBad gui=undercurl cterm=undercurl guisp=#4884d2
  " Wrong spelling for selected region
  highlight SpellLocal gui=undercurl cterm=undercurl guisp=#1f90a8
  " Rare word
  highlight SpellRare gui=undercurl cterm=undercurl guisp=#a55aaa
endif

if hlexists('FloatBorder')
  highlight FloatBorder None
  highlight FloatBorder guifg=#a09999 ctermfg=238 gui=bold cterm=bold
  highlight FloatShadow None
  highlight FloatShadow guibg=#372a2a ctermbg=235
endif

if hlexists('DiagnosticInfo')
  highlight DiagnosticDeprecated cterm=strikethrough gui=strikethrough guisp=Red
  highlight DiagnosticOk    guifg=#9abe86 ctermfg=10
  highlight DiagnosticHint  guifg=#7d7373 ctermfg=237
  highlight DiagnosticInfo  guifg=#89b7e1 ctermfg=12
  highlight DiagnosticWarn  guifg=#f5875b ctermfg=9
  highlight DiagnosticError guifg=#da5774 ctermfg=1
  highlight DiagnosticUnderlineOk gui=underline cterm=underline guisp=#9abe86
  highlight DiagnosticUnderlineHint gui=underline cterm=underline guisp=#7d7373
  highlight DiagnosticUnderlineInfo gui=underline cterm=underline guisp=#89b7e1
  highlight DiagnosticUnderlineWarn gui=underline cterm=underline guisp=#f5875b
  highlight DiagnosticUnderlineError gui=underline cterm=underline guisp=#da5774
endif

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
