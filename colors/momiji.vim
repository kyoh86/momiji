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

" Palette {{{
let s:black          = momiji#palette('black')
let s:red            = momiji#palette('red')
let s:green          = momiji#palette('green')
let s:yellow         = momiji#palette('yellow')
let s:blue           = momiji#palette('blue')
let s:magenta        = momiji#palette('magenta')
let s:cyan           = momiji#palette('cyan')
let s:white          = momiji#palette('white')
let s:bright_black   = momiji#palette('bright_black')
let s:bright_red     = momiji#palette('bright_red')
let s:bright_green   = momiji#palette('bright_green')
let s:bright_yellow  = momiji#palette('bright_yellow')
let s:bright_blue    = momiji#palette('bright_blue')
let s:bright_magenta = momiji#palette('bright_magenta')
let s:bright_cyan    = momiji#palette('bright_cyan')
let s:bright_white   = momiji#palette('bright_white')

let s:hard_black     = momiji#palette('hard_black')
let s:grayscale1     = momiji#palette('grayscale1')
let s:grayscale2     = momiji#palette('grayscale2')
let s:grayscale3     = momiji#palette('grayscale3')
let s:grayscale4     = momiji#palette('grayscale4')
let s:grayscale5     = momiji#palette('grayscale5')
"}}}
"
" Setup Environments: {{{
if has('gui_running') || $TERM_ITALICS == 'true'
  let s:default_momiji_italic=1
else
  let s:default_momiji_italic=0
endif
" }}}
" Setup Variables: {{{
let s:none = ['NONE', 'NONE']

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
" Highlighting Function: {{{
function! s:H(group, params)
  call momiji#highlight(a:group, a:params)
endfunction
"}}}
" Momiji Hi Groups: {{{
" memoize common hi groups
call s:H('MomijiWhite', {'fg': s:white})
call s:H('MomijiRed', {'fg': s:red})
call s:H('MomijiGreen', {'fg': s:green})
call s:H('MomijiYellow', {'fg': s:yellow})
call s:H('MomijiBlue', {'fg': s:blue})
call s:H('MomijiMagenta', {'fg': s:magenta})
call s:H('MomijiCyan', {'fg': s:cyan})
call s:H('MomijiBlack', {'fg': s:black})
call s:H('MomijiRedBold', {'fg': s:red, 'empha': [s:bold]})
call s:H('MomijiGreenBold', {'fg': s:green, 'empha': [s:bold]})
call s:H('MomijiYellowBold', {'fg': s:yellow, 'empha': [s:bold]})
call s:H('MomijiBlueBold', {'fg': s:blue, 'empha': [s:bold]})
call s:H('MomijiMagentaBold', {'fg': s:magenta, 'empha': [s:bold]})
call s:H('MomijiCyanBold', {'fg': s:cyan, 'empha': [s:bold]})

call s:H('MomijiBrightRed', {'fg': s:bright_red})
call s:H('MomijiBrightGreen', {'fg': s:bright_green})
call s:H('MomijiBrightYellow', {'fg': s:bright_yellow})
call s:H('MomijiBrightBlue', {'fg': s:bright_blue})
call s:H('MomijiBrightMagenta', {'fg': s:bright_magenta})
call s:H('MomijiBrightCyan', {'fg': s:bright_cyan})
call s:H('MomijiBrightBlack', {'fg': s:bright_black})
call s:H('MomijiBrightWhite', {'fg': s:bright_white})

" special
call s:H('MomijiBrightRedBold', {'fg': s:bright_red, 'empha': [s:bold]})
call s:H('MomijiGrayscale1', {'fg': s:grayscale1})
call s:H('MomijiGrayscale2', {'fg': s:grayscale2})
call s:H('MomijiGrayscale3', {'fg': s:grayscale3})
call s:H('MomijiGrayscale4', {'fg': s:grayscale4})
call s:H('MomijiGrayscale5', {'fg': s:grayscale5})
" }}}
" Terminal Ansi Colors: {{{
let g:terminal_ansi_colors = [
      \ s:black[0],
      \ s:red[0],
      \ s:green[0],
      \ s:yellow[0],
      \ s:blue[0],
      \ s:magenta[0],
      \ s:cyan[0],
      \ s:white[0],
      \ s:bright_black[0],
      \ s:bright_red[0],
      \ s:bright_green[0],
      \ s:bright_yellow[0],
      \ s:bright_blue[0],
      \ s:bright_magenta[0],
      \ s:bright_cyan[0],
      \ s:bright_white[0],
      \ ]
let g:terminal_color_0  = s:black[0]
let g:terminal_color_1  = s:red[0]
let g:terminal_color_2  = s:green[0]
let g:terminal_color_3  = s:yellow[0]
let g:terminal_color_4  = s:blue[0]
let g:terminal_color_5  = s:magenta[0]
let g:terminal_color_6  = s:cyan[0]
let g:terminal_color_7  = s:white[0]
let g:terminal_color_8  = s:bright_black[0]
let g:terminal_color_9  = s:bright_red[0]
let g:terminal_color_10 = s:bright_green[0]
let g:terminal_color_11 = s:bright_yellow[0]
let g:terminal_color_12 = s:bright_blue[0]
let g:terminal_color_13 = s:bright_magenta[0]
let g:terminal_color_14 = s:bright_cyan[0]
let g:terminal_color_15 = s:bright_white[0]
" }}}

" General UI: {{{
" Normal text
call s:H('Normal', {'fg': s:bright_white, 'bg': s:black})

" Screen line that the cursor is
highlight! CursorLine NONE
call s:H('CursorLine', {'empha': [s:underline]})
" Screen column that the cursor is
call s:H('CursorColumn', {'bg': s:bright_black})

" Tab pages line filler
call s:H('TabLineFill', {'fg': s:green, 'bg': s:black})
" Active tab page label
call s:H('TabLineSel', {'fg': s:red, 'bg': s:black, 'empha': [s:bold]})
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
call s:H('MatchParen', {'fg': s:yellow, 'bg': s:bright_black, 'empha': [s:bold]})

" Highlighted screen columns
call s:H('ColorColumn', {'bg': s:bright_black})

" Concealed element: \lambda → λ
call s:H('Conceal', {'fg': s:blue})

" Line number of CursorLine
call s:H('CursorLineNr', {'fg': s:yellow, 'bg': s:black, 'empha': [s:bold]})

highlight! link NonText MomijiBrightBlack
highlight! link SpecialKey MomijiBrightBlack
highlight! link Whitespace MomijiBrightBlack

call s:H('Visual', {'fg': s:black, 'bg': s:yellow})
highlight! link VisualNOS Visual

call s:H('Search', {'fg': s:black, 'bg': s:bright_blue})
call s:H('IncSearch', {'fg': s:black, 'bg': s:bright_blue, 'empha': [s:inverse]})

call s:H('Underlined', {'fg': s:blue, 'empha': [s:underline]})

call s:H('StatusLine', {'fg': s:bright_white, 'bg': s:bright_black, 'empha': [s:bold, s:inverse]})
call s:H('StatusLineNC', {'fg': s:white, 'bg': s:black, 'empha': [s:underline]})

" The column separating vertically split windows
call s:H('VertSplit', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:inverse]})

" Current match in wildmenu completion
call s:H('WildMenu', {'fg': s:blue, 'bg': s:black, 'empha': [s:bold]})

" Directory names, special names in listing
highlight! link Directory MomijiGreenBold

" Titles for output from :set all, :autocmd, etc.
highlight! link Title MomijiGreenBold

" Error messages on the command line
call s:H('ErrorMsg', {'fg': s:bright_white, 'bg': s:red})
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
call s:H('LineNr', {'fg': s:white})

" Column where signs are displayed
call s:H('SignColumn', {'bg': s:black})

" Line used for closed folds
call s:H('Folded', {'fg': s:white, 'bg': s:black, 'empha': [s:italic]})
" Column where folds are displayed
call s:H('FoldColumn', {'fg': s:white, 'bg': s:black})
" }}}
" Cursor: {{{
" Character under cursor
call s:H('Cursor', {'fg': s:none, 'bg': s:none, 'empha': [s:inverse]})
" Visual mode cursor, selection
call s:H('vCursor', {'fg': s:black, 'bg': s:bright_yellow})
" Input moder cursor
highlight! link iCursor Cursor
" Language mapping cursor
highlight! link lCursor Cursor
" }}}
" Syntax Highlighting: {{{
highlight! link Special MomijiBrightYellow

call s:H('Comment', {'fg': s:white, 'empha': [s:italic]})
call s:H('Todo', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:bold, s:italic]})
call s:H('Error', {'fg': s:bright_red, 'bg': s:black, 'empha': [s:bold, s:inverse]})

" String constant: "this is a string"
call s:H('String', {'fg': s:green})

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
call s:H('Pmenu', {'fg': s:black, 'bg': s:bright_yellow})
" Popup menu: selected item
call s:H('PmenuSel', {'fg': s:black, 'bg': s:yellow, 'empha': [s:bold]})
" Popup menu: scrollbar
call s:H('PmenuSbar', {'bg': s:black})
" Popup menu: scrollbar thumb
call s:H('PmenuThumb', {'bg': s:black})
" }}}
" Diffs: {{{
call s:H('DiffDelete', {'fg': s:bright_red, 'bg': s:black})
call s:H('DiffAdd', {'fg': s:bright_green, 'bg': s:black})
call s:H('DiffChange', {'fg': s:cyan, 'bg': s:black})
call s:H('DiffText', {'fg': s:bright_yellow, 'bg': s:black})
" }}}
" Spelling: {{{
if has("spell")
  " Not capitalised word, or compile warnings
  call s:H('SpellCap', {'empha': [s:underline, s:italic]})
  " Not recognized word
  call s:H('SpellBad', {'empha': [s:undercurl], 'guisp': s:blue})
  " Wrong spelling for selected region
  call s:H('SpellLocal', {'empha': [s:undercurl], 'guisp': s:cyan})
  " Rare word
  call s:H('SpellRare', {'empha': [s:undercurl], 'guisp': s:magenta})
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
