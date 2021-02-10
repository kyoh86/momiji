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

" Setup Environments: {{{
if has('gui_running') || $TERM_ITALICS == 'true'
  let s:default_momiji_italic=1
else
  let s:default_momiji_italic=0
endif
" }}}
" Setup Variables: {{{
let s:none = ['NONE', 'NONE']

let g:momiji_colors = {}
let g:momiji_colors['black'] =        '#140c0c'   " =rgb( 20,  12,  12)  =rgb(  7.8%,   4.7%,   4.7%)
let g:momiji_colors['red'] =          '#da5774'   " =rgb(218,  87, 116)  =rgb( 85.5%,  34.1%,  45.5%)
let g:momiji_colors['green'] =        '#348c4e'   " =rgb( 52, 140,  78)  =rgb( 20.4%,  54.9%,  30.6%)
let g:momiji_colors['yellow'] =       '#e7a82b'   " =rgb(231, 168,  43)  =rgb( 90.6%,  65.9%,  16.9%)
let g:momiji_colors['blue'] =         '#4884d2'   " =rgb( 72, 132, 210)  =rgb( 28.2%,  51.8%,  82.4%)
let g:momiji_colors['magenta'] =      '#a55aaa'   " =rgb(165,  90, 170)  =rgb( 64.7%,  35.3%,  66.7%)
let g:momiji_colors['cyan'] =         '#1f90a8'   " =rgb( 31, 144, 168)  =rgb( 12.2%,  56.5%,  65.9%)
let g:momiji_colors['white'] =        '#a09999'   " =rgb(160, 153, 153)  =rgb( 62.7%,  60.0%,  60.0%)
let g:momiji_colors['lightblack'] =   '#5a4e4e'   " =rgb( 90,  78,  78)  =rgb( 35.3%,  30.6%,  30.6%)
let g:momiji_colors['lightred'] =     '#f5875b'   " =rgb(245, 135,  91)  =rgb( 96.1%,  52.9%,  35.7%)
let g:momiji_colors['lightgreen'] =   '#9abe86'   " =rgb(154, 190, 134)  =rgb( 60.4%,  74.5%,  52.5%)
let g:momiji_colors['lightyellow'] =  '#ffd791'   " =rgb(255, 215, 145)  =rgb(100.0%,  84.3%,  56.9%)
let g:momiji_colors['lightblue'] =    '#89b7e1'   " =rgb(137, 183, 225)  =rgb( 53.7%,  71.8%,  88.2%)
let g:momiji_colors['lightmagenta'] = '#eea1d1'   " =rgb(238, 161, 209)  =rgb( 93.3%,  63.1%,  82.0%)
let g:momiji_colors['lightcyan'] =    '#69b2ac'   " =rgb(105, 178, 172)  =rgb( 41.2%,  69.8%,  67.5%)
let g:momiji_colors['lightwhite'] =   '#e6e3e3'   " =rgb(230, 227, 227)  =rgb( 90.2%,  89.0%,  89.0%)
let g:momiji_colors['hardblack'] =    '#080808'   " =rgb(  8,   8,   8)  =rgb(  3.1%,   3.1%,   3.1%)
let g:momiji_colors['grayscale1'] =   '#372a2a'   " =rgb( 55,  42,  42)  =rgb( 21.6%,  16.5%,  16.5%)
let g:momiji_colors['grayscale2'] =   '#5a4e4e'   " =rgb( 90,  78,  78)  =rgb( 35.3%,  30.6%,  30.6%)
let g:momiji_colors['grayscale3'] =   '#7d7373'   " =rgb(125, 115, 115)  =rgb( 49.0%,  45.1%,  45.1%)
let g:momiji_colors['grayscale4'] =   '#a09999'   " =rgb(160, 153, 153)  =rgb( 62.7%,  60.0%,  60.0%)
let g:momiji_colors['grayscale5'] =   '#c3bebe'   " =rgb(195, 190, 190)  =rgb( 76.5%,  74.5%,  74.5%)

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
"   - empha  list<"bold"|"italic"|"inverse">
"   - guisp  list<"underline"|"undercurl">
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

let g:momiji_bold = get(g:, 'momiji_bold', 1)
let g:momiji_italic = get(g:, 'momiji_italic', s:default_momiji_italic)
let g:momiji_undercurl = get(g:, 'momiji_undercurl', 1)
let g:momiji_underline = get(g:, 'momiji_underline', 1)
let g:momiji_inverse = get(g:, 'momiji_inverse', 1)
" }}}
" Setup Emphasis: {{{
let s:bold = 'bold'
if g:momiji_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic'
if g:momiji_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline'
if g:momiji_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl'
if g:momiji_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse'
if g:momiji_inverse == 0
  let s:inverse = ''
endif
" }}}
" Momiji Hi Groups: {{{
" memoize common hi groups
call MomijiHighlight('MomijiWhite', {'fg': g:momiji_palette.white})
call MomijiHighlight('MomijiRed', {'fg': g:momiji_palette.red})
call MomijiHighlight('MomijiGreen', {'fg': g:momiji_palette.green})
call MomijiHighlight('MomijiYellow', {'fg': g:momiji_palette.yellow})
call MomijiHighlight('MomijiBlue', {'fg': g:momiji_palette.blue})
call MomijiHighlight('MomijiMagenta', {'fg': g:momiji_palette.magenta})
call MomijiHighlight('MomijiCyan', {'fg': g:momiji_palette.cyan})
call MomijiHighlight('MomijiBlack', {'fg': g:momiji_palette.black})
call MomijiHighlight('MomijiRedBold', {'fg': g:momiji_palette.red, 'empha': [s:bold]})
call MomijiHighlight('MomijiGreenBold', {'fg': g:momiji_palette.green, 'empha': [s:bold]})
call MomijiHighlight('MomijiYellowBold', {'fg': g:momiji_palette.yellow, 'empha': [s:bold]})
call MomijiHighlight('MomijiBlueBold', {'fg': g:momiji_palette.blue, 'empha': [s:bold]})
call MomijiHighlight('MomijiMagentaBold', {'fg': g:momiji_palette.magenta, 'empha': [s:bold]})
call MomijiHighlight('MomijiCyanBold', {'fg': g:momiji_palette.cyan, 'empha': [s:bold]})

call MomijiHighlight('MomijiBrightRed', {'fg': g:momiji_palette.lightred})
call MomijiHighlight('MomijiBrightGreen', {'fg': g:momiji_palette.lightgreen})
call MomijiHighlight('MomijiBrightYellow', {'fg': g:momiji_palette.lightyellow})
call MomijiHighlight('MomijiBrightBlue', {'fg': g:momiji_palette.lightblue})
call MomijiHighlight('MomijiBrightMagenta', {'fg': g:momiji_palette.lightmagenta})
call MomijiHighlight('MomijiBrightCyan', {'fg': g:momiji_palette.lightcyan})
call MomijiHighlight('MomijiBrightBlack', {'fg': g:momiji_palette.lightblack})
call MomijiHighlight('MomijiBrightWhite', {'fg': g:momiji_palette.lightwhite})

" special
call MomijiHighlight('MomijiBrightRedBold', {'fg': g:momiji_palette.lightred, 'empha': [s:bold]})
call MomijiHighlight('MomijiGrayscale1', {'fg': g:momiji_palette.grayscale1})
call MomijiHighlight('MomijiGrayscale2', {'fg': g:momiji_palette.grayscale2})
call MomijiHighlight('MomijiGrayscale3', {'fg': g:momiji_palette.grayscale3})
call MomijiHighlight('MomijiGrayscale4', {'fg': g:momiji_palette.grayscale4})
call MomijiHighlight('MomijiGrayscale5', {'fg': g:momiji_palette.grayscale5})
" }}}
" Terminal Ansi Colors: {{{
let g:terminal_ansi_colors = [
      \ g:momiji_colors.black,
      \ g:momiji_colors.red,
      \ g:momiji_colors.green,
      \ g:momiji_colors.yellow,
      \ g:momiji_colors.blue,
      \ g:momiji_colors.magenta,
      \ g:momiji_colors.cyan,
      \ g:momiji_colors.white,
      \ g:momiji_colors.lightblack,
      \ g:momiji_colors.lightred,
      \ g:momiji_colors.lightgreen,
      \ g:momiji_colors.lightyellow,
      \ g:momiji_colors.lightblue,
      \ g:momiji_colors.lightmagenta,
      \ g:momiji_colors.lightcyan,
      \ g:momiji_colors.lightwhite,
      \ ]
let g:terminal_color_0  = g:momiji_colors.black
let g:terminal_color_1  = g:momiji_colors.red
let g:terminal_color_2  = g:momiji_colors.green
let g:terminal_color_3  = g:momiji_colors.yellow
let g:terminal_color_4  = g:momiji_colors.blue
let g:terminal_color_5  = g:momiji_colors.magenta
let g:terminal_color_6  = g:momiji_colors.cyan
let g:terminal_color_7  = g:momiji_colors.white
let g:terminal_color_8  = g:momiji_colors.lightblack
let g:terminal_color_9  = g:momiji_colors.lightred
let g:terminal_color_10 = g:momiji_colors.lightgreen
let g:terminal_color_11 = g:momiji_colors.lightyellow
let g:terminal_color_12 = g:momiji_colors.lightblue
let g:terminal_color_13 = g:momiji_colors.lightmagenta
let g:terminal_color_14 = g:momiji_colors.lightcyan
let g:terminal_color_15 = g:momiji_colors.lightwhite
" }}}

" General UI: {{{
" Normal text
call MomijiHighlight('Normal', {'fg': g:momiji_palette.lightwhite, 'bg': g:momiji_palette.black})

" Screen line that the cursor is
highlight! CursorLine NONE
call MomijiHighlight('CursorLine', {'empha': [s:underline]})
" Screen column that the cursor is
call MomijiHighlight('CursorColumn', {'bg': g:momiji_palette.lightblack})

" Tab pages line filler
call MomijiHighlight('TabLineFill', {'fg': g:momiji_palette.green, 'bg': g:momiji_palette.black})
" Active tab page label
call MomijiHighlight('TabLineSel', {'fg': g:momiji_palette.red, 'bg': g:momiji_palette.black, 'empha': [s:bold]})
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
call MomijiHighlight('MatchParen', {'fg': g:momiji_palette.yellow, 'bg': g:momiji_palette.lightblack, 'empha': [s:bold]})

" Highlighted screen columns
call MomijiHighlight('ColorColumn', {'bg': g:momiji_palette.lightblack})

" Concealed element: \lambda → λ
call MomijiHighlight('Conceal', {'fg': g:momiji_palette.blue})

" Line number of CursorLine
call MomijiHighlight('CursorLineNr', {'fg': g:momiji_palette.yellow, 'bg': g:momiji_palette.black, 'empha': [s:bold]})

highlight! link NonText MomijiBrightBlack
highlight! link SpecialKey MomijiBrightBlack
highlight! link Whitespace MomijiBrightBlack

call MomijiHighlight('Visual', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.yellow})
highlight! link VisualNOS Visual

call MomijiHighlight('Search', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.lightblue})
call MomijiHighlight('IncSearch', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.lightblue, 'empha': [s:inverse]})

call MomijiHighlight('Underlined', {'fg': g:momiji_palette.blue, 'empha': [s:underline]})

call MomijiHighlight('StatusLine', {'fg': g:momiji_palette.lightwhite, 'bg': g:momiji_palette.lightblack, 'empha': [s:bold, s:inverse]})
call MomijiHighlight('StatusLineNC', {'fg': g:momiji_palette.white, 'bg': g:momiji_palette.black, 'empha': [s:underline]})

" The column separating vertically split windows
call MomijiHighlight('VertSplit', {'fg': g:momiji_palette.lightwhite, 'bg': g:momiji_palette.black, 'empha': [s:inverse]})

" Current match in wildmenu completion
call MomijiHighlight('WildMenu', {'fg': g:momiji_palette.blue, 'bg': g:momiji_palette.black, 'empha': [s:bold]})

" Directory names, special names in listing
highlight! link Directory MomijiGreenBold

" Titles for output from :set all, :autocmd, etc.
highlight! link Title MomijiGreenBold

" Error messages on the command line
call MomijiHighlight('ErrorMsg', {'fg': g:momiji_palette.lightwhite, 'bg': g:momiji_palette.red})
" More prompt: -- More --
highlight! link MoreMsg MomijiYellowBold
" Current mode message: -- INSERT --
highlight! link ModeMsg MomijiYellowBold
" 'Press enter' prompt and yes/no questions
highlight! link Question MomijiBrightRedBold
" Warning messages
highlight! link WarningMsg MomijiRedBold
" }}}
" Gutter: {{{
" Line number for :number and :# commands
call MomijiHighlight('LineNr', {'fg': g:momiji_palette.white})

" Column where signs are displayed
call MomijiHighlight('SignColumn', {'bg': g:momiji_palette.black})

" Line used for closed folds
call MomijiHighlight('Folded', {'fg': g:momiji_palette.white, 'bg': g:momiji_palette.black, 'empha': [s:italic]})
" Column where folds are displayed
call MomijiHighlight('FoldColumn', {'fg': g:momiji_palette.white, 'bg': g:momiji_palette.black})
" }}}
" Cursor: {{{
" Character under cursor
call MomijiHighlight('Cursor', {'fg': s:none, 'bg': s:none, 'empha': [s:inverse]})
" Visual mode cursor, selection
call MomijiHighlight('vCursor', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.lightyellow})
" Input moder cursor
highlight! link iCursor Cursor
" Language mapping cursor
highlight! link lCursor Cursor
" }}}
" Syntax Highlighting: {{{
highlight! link Special MomijiBrightYellow

call MomijiHighlight('Comment', {'fg': g:momiji_palette.white, 'empha': [s:italic]})
call MomijiHighlight('Todo', {'fg': g:momiji_palette.lightwhite, 'bg': g:momiji_palette.black, 'empha': [s:bold, s:italic]})
call MomijiHighlight('Error', {'fg': g:momiji_palette.lightred, 'bg': g:momiji_palette.black, 'empha': [s:bold, s:inverse]})

" String constant: "this is a string"
call MomijiHighlight('String', {'fg': g:momiji_palette.green})

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
highlight! link Operator Normal
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
" }}}
" Completion Menu: {{{
" Popup menu: normal item
call MomijiHighlight('Pmenu', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.lightyellow})
" Popup menu: selected item
call MomijiHighlight('PmenuSel', {'fg': g:momiji_palette.black, 'bg': g:momiji_palette.yellow, 'empha': [s:bold]})
" Popup menu: scrollbar
call MomijiHighlight('PmenuSbar', {'bg': g:momiji_palette.black})
" Popup menu: scrollbar thumb
call MomijiHighlight('PmenuThumb', {'bg': g:momiji_palette.black})
" }}}
" Diffs: {{{
call MomijiHighlight('DiffDelete', {'fg': g:momiji_palette.lightred, 'bg': g:momiji_palette.black})
call MomijiHighlight('DiffAdd', {'fg': g:momiji_palette.lightgreen, 'bg': g:momiji_palette.black})
call MomijiHighlight('DiffChange', {'fg': g:momiji_palette.cyan, 'bg': g:momiji_palette.black})
call MomijiHighlight('DiffText', {'fg': g:momiji_palette.lightyellow, 'bg': g:momiji_palette.black})
" }}}
" Spelling: {{{
if has("spell")
  " Not capitalised word, or compile warnings
  call MomijiHighlight('SpellCap', {'empha': [s:underline, s:italic]})
  " Not recognized word
  call MomijiHighlight('SpellBad', {'empha': [s:undercurl], 'guisp': g:momiji_palette.blue})
  " Wrong spelling for selected region
  call MomijiHighlight('SpellLocal', {'empha': [s:undercurl], 'guisp': g:momiji_palette.cyan})
  " Rare word
  call MomijiHighlight('SpellRare', {'empha': [s:undercurl], 'guisp': g:momiji_palette.magenta})
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
