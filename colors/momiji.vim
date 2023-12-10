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
let g:momiji_colors['black'] =        '#140c0c'
let g:momiji_colors['red'] =          '#da5774'
let g:momiji_colors['green'] =        '#348c4e'
let g:momiji_colors['yellow'] =       '#e7a82b'
let g:momiji_colors['blue'] =         '#4884d2'
let g:momiji_colors['magenta'] =      '#a55aaa'
let g:momiji_colors['cyan'] =         '#1f90a8'
let g:momiji_colors['white'] =        '#a09999'
let g:momiji_colors['lightblack'] =   '#5a4e4e'
let g:momiji_colors['lightred'] =     '#f5875b'
let g:momiji_colors['lightgreen'] =   '#9abe86'
let g:momiji_colors['lightyellow'] =  '#ffd791'
let g:momiji_colors['lightblue'] =    '#89b7e1'
let g:momiji_colors['lightmagenta'] = '#eea1d1'
let g:momiji_colors['lightcyan'] =    '#69b2ac'
let g:momiji_colors['lightwhite'] =   '#e6e3e3'
let g:momiji_colors['hardblack'] =    '#080808'
let g:momiji_colors['grayscale1'] =   '#372a2a'
let g:momiji_colors['grayscale2'] =   '#5a4e4e'
let g:momiji_colors['grayscale3'] =   '#7d7373'
let g:momiji_colors['grayscale4'] =   '#a09999'
let g:momiji_colors['grayscale5'] =   '#c3bebe'

let g:momiji_palette = {}
let g:momiji_palette['black'] =        [g:momiji_colors.black,        0]
let g:momiji_palette['red'] =          [g:momiji_colors.red,          1]
let g:momiji_palette['green'] =        [g:momiji_colors.green,        2]
let g:momiji_palette['yellow'] =       [g:momiji_colors.yellow,       3]
let g:momiji_palette['blue'] =         [g:momiji_colors.blue,         4]
let g:momiji_palette['magenta'] =      [g:momiji_colors.magenta,      5]
let g:momiji_palette['cyan'] =         [g:momiji_colors.cyan,         6]
let g:momiji_palette['white'] =        [g:momiji_colors.white,        7]
let g:momiji_palette['lightblack'] =   [g:momiji_colors.lightblack,   8]
let g:momiji_palette['lightred'] =     [g:momiji_colors.lightred,     9]
let g:momiji_palette['lightgreen'] =   [g:momiji_colors.lightgreen,   10]
let g:momiji_palette['lightyellow'] =  [g:momiji_colors.lightyellow,  11]
let g:momiji_palette['lightblue'] =    [g:momiji_colors.lightblue,    12]
let g:momiji_palette['lightmagenta'] = [g:momiji_colors.lightmagenta, 13]
let g:momiji_palette['lightcyan'] =    [g:momiji_colors.lightcyan,    14]
let g:momiji_palette['lightwhite'] =   [g:momiji_colors.lightwhite,   15]
let g:momiji_palette['hardblack'] =    [g:momiji_colors.hardblack,    232]
let g:momiji_palette['grayscale1'] =   [g:momiji_colors.grayscale1,   235]
let g:momiji_palette['grayscale2'] =   [g:momiji_colors.grayscale2,   236]
let g:momiji_palette['grayscale3'] =   [g:momiji_colors.grayscale3,   237]
let g:momiji_palette['grayscale4'] =   [g:momiji_colors.grayscale4,   238]
let g:momiji_palette['grayscale5'] =   [g:momiji_colors.grayscale5,   239]

" Set a highlight group.
" `params` contains some options like below.
"   - fg     color
"   - bg     color
"   - empha  list of bold|italic|inverseg|underline|undercurlg
"   - guisp  a color for various underlines
"
" Which color for fg or bg you can get it from g:momiji_palette e.g.:
"   call MomijiHighlight(Pmenu, {'fg': g:momiji_palette.red})
function! MomijiHighlight(group, params)
  " params: fg, bg, empha, guisp
  let l:histr = [ 'highlight', a:group ]

  let l:fg = get(a:params, 'fg', get(a:params, 'foreground', []))
  if len(l:fg) >= 2
    call extend(l:histr, ['guifg=' . l:fg[0], 'ctermfg=' . l:fg[1]])
  endif

  let l:bg = get(a:params, 'bg', get(a:params, 'background', []))
  if len(l:bg) >= 2
    call extend(l:histr, ['guibg=' . l:bg[0], 'ctermbg=' . l:bg[1]])
  endif

  let l:empha = get(a:params, 'empha', [])
  let l:empha = filter(l:empha, {_, v -> v !=# ''})

  if len(l:empha) > 0
    let l:em = join(l:empha, ',')
    call extend(l:histr, ['gui=' . l:em, 'cterm=' . l:em])
  endif

  let l:guisp = get(a:params, 'guisp', [])
  if len(l:guisp) > 0
    call add(l:histr, 'guisp=' . l:guisp[0])
  endif

  execute join(l:histr, ' ')
endfunction

" Momiji Hi Groups:
" memoize common hi groups
highlight MomijiWhite guifg=#140c0c ctermfg=0
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
highlight MomijiGrayScale1 guifg=#372a2a ctermfg=235
highlight MomijiGrayScale2 guifg=#5a4e4e ctermfg=236
highlight MomijiGrayScale3 guifg=#7d7373 ctermfg=237
highlight MomijiGrayScale4 guifg=#a09999 ctermfg=238
highlight MomijiGrayScale5 guifg=#c3bebe ctermfg=239

" General UI:
" Normal text
highlight Normal guifg=#e6e3e3 ctermfg=15 guibg=#140c0c ctermbg=0
highlight NormalFloat guifg=#e6e3e3 ctermfg=15 guibg=#372a2a ctermbg=235

" Screen line that the cursor is
highlight! CursorLine NONE
highlight CursorLine guibg=#372a2a ctermbg=235
" Screen column that the cursor is
highlight CursorColumn guibg=#5a4e4e ctermbg=8

" Tab pages line filler
highlight TabLineFill guifg=#348c4e ctermfg=2 guibg=#140c0c ctermbg=0
" Active tab page label
highlight TabLineSel guifg=#da5774 ctermfg=1 guibg=#140c0c ctermbg=0 gui=bold cterm=bold
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
highlight MatchParen guifg=#e7a82b ctermfg=3 guibg=#5a4e4e ctermbg=8 gui=bold cterm=bold

" Highlighted screen columns
highlight ColorColumn guibg=#5a4e4e ctermbg=8

" Concealed element: \lambda → λ
highlight Conceal guifg=#4884d2 ctermfg=4

highlight! link NonText MomijiBrightBlack
highlight! link SpecialKey MomijiBrightBlack
highlight! link Whitespace MomijiBrightBlack

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

highlight StatusLine guifg=#a09999 ctermfg=7 guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
highlight StatusLineNC guifg=#a09999 ctermfg=7 guibg=#140c0c ctermbg=0 gui=underline cterm=underline

" The column separating vertically split windows
highlight VertSplit guifg=#a09999 ctermfg=238 gui=bold cterm=bold

" Current match in wildmenu completion
highlight WildMenu guifg=#4884d2 ctermfg=4 guibg=#140c0c ctermbg=0 gui=bold cterm=bold

" Directory names, special names in listing
highlight! link Directory MomijiGreenBold

" Titles for output from :set all, :autocmd, etc.
highlight! link Title MomijiYellowBold

" Error messages on the command line
highlight ErrorMsg guifg=#e6e3e3 ctermfg=15 guibg=#da5774 ctermbg=1
" More prompt: -- More --
highlight! link MoreMsg MomijiYellowBold
" Current mode message: -- INSERT --
highlight! link ModeMsg MomijiYellowBold
" 'Press enter' prompt and yes/no questions
highlight! link Question MomijiBrightRedBold
" Warning messages
highlight! link WarningMsg MomijiRedBold
" Gutter:
" Line number for :number and :# commands
highlight LineNr guifg=#a09999 ctermfg=7 guibg=#080808 ctermbg=232

" Line number of CursorLine
highlight CursorLineNr guifg=#372a2a ctermfg=235 guibg=#4884d2 ctermbg=4 gui=bold cterm=bold
highlight CursorLineSign guifg=#372a2a ctermfg=235 gui=bold cterm=bold

if hlexists('LineNrAbove')
  highlight LineNrAbove guifg=#eea1d1 ctermfg=13 guibg=#080808 ctermbg=232
  highlight LineNrBelow guifg=#9abe86 ctermfg=10 guibg=#080808 ctermbg=232
endif

" Column where signs are displayed
highlight SignColumn guibg=#080808 ctermbg=232

" Line used for closed folds
highlight Folded guifg=#a09999 ctermfg=7 guibg=#140c0c ctermbg=0 gui=italic cterm=italic
" Column where folds are displayed
highlight FoldColumn guifg=#a09999 ctermfg=7 guibg=#140c0c ctermbg=0
" Cursor:
" Character under cursor
highlight Cursor guifg=#140c0c ctermfg=0 guibg=#ffd791 ctermbg=11
" Character under cursor
highlight link TermCursor Cursor
" Visual mode cursor, selection
highlight link vCursor Cursor
" Input moder cursor
highlight! link iCursor Cursor
" Language mapping cursor
highlight! link lCursor Cursor
" Syntax Highlighting:
highlight! link Special MomijiBrightYellow

highlight Comment guifg=#a09999 ctermfg=7 gui=italic cterm=italic
highlight Todo guifg=#e6e3e3 ctermfg=15 guibg=#140c0c ctermbg=0 gui=bold,italic cterm=bold,italic
highlight Error guifg=#f5875b ctermfg=9 guibg=#140c0c ctermbg=0 gui=bold,inverse cterm=bold,inverse

" String constant: "this is a string"
highlight String guifg=#348c4e ctermfg=2

" Generic statement
highlight! link Statement MomijiYellow
" if, then, else, endif, swicth, etc.
highlight! link Conditional MomijiYellow
" for, do, while, etc.
highlight! link Repeat MomijiYellow
" case, default, etc.
highlight! link Label MomijiYellow
" try, catch, throw
highlight! link Exception MomijiRed
" sizeof, "+", "*", etc.
highlight! link Operator None
" Any other keyword
highlight! link Keyword MomijiRed

" Variable name
highlight! link Identifier MomijiBrightBlue
" Function name
highlight! link Function MomijiBlue

" Generic preprocessor
highlight! link PreProc MomijiMagenta
" Preprocessor #include
highlight! link Include MomijiMagenta
" Preprocessor #define
highlight! link Define MomijiMagenta
" Same as Define
highlight! link Macro MomijiMagenta
" Preprocessor #if, #else, #endif, etc.
highlight! link PreCondit MomijiMagenta

" Generic constant
highlight! link Constant MomijiBrightMagenta
" Character constant: 'c', '/n'
highlight! link Character MomijiBrightMagenta
" Boolean constant: TRUE, false
highlight! link Boolean MomijiBrightMagenta
" Number constant: 234, 0xff
highlight! link Number MomijiBrightMagenta
" Floating point constant: 2.3e10
highlight! link Float MomijiBrightMagenta

" Generic type
highlight! link Type MomijiCyan
" static, register, volatile, etc
highlight! link StorageClass MomijiCyan
" struct, union, enum, etc.
highlight! link Structure MomijiBrightRed
" typedef
highlight! link Typedef MomijiBrightRed
" Completion Menu:
" Popup menu: normal item
highlight Pmenu guibg=#372a2a ctermbg=235
" Popup menu: selected item
highlight PmenuSel guibg=#5a4e4e ctermbg=236 gui=bold cterm=bold
" Popup menu: scrollbar
highlight PmenuSbar guibg=#5a4e4e ctermbg=236
" Popup menu: scrollbar thumb
highlight PmenuThumb guibg=#5a4e4e ctermbg=236
" Diffs:
highlight DiffDelete guifg=#f5875b ctermfg=9 guibg=#140c0c ctermbg=0
highlight DiffAdd guifg=#9abe86 ctermfg=10 guibg=#140c0c ctermbg=0
highlight DiffChange guifg=#1f90a8 ctermfg=6 guibg=#140c0c ctermbg=0
highlight DiffText guifg=#ffd791 ctermfg=11 guibg=#140c0c ctermbg=0
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
