" 'momiji.vim' -- Vim color scheme.
" Maintainer:   kyoh86 (master@kyoh86.dev)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/kyoh86/momiji

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='momiji'

if !has('gui_running') && &t_Co != 256
  finish
endif

" Palette {{{

let s:black          = ["#140c0c", 0]
let s:red            = ["#da5774", 1]
let s:green          = ["#348c4e", 2]
let s:yellow         = ["#e7a82b", 3]
let s:blue           = ["#4884d2", 4]
let s:magenta        = ["#a55aaa", 5]
let s:cyan           = ["#1f90a8", 6]
let s:white          = ["#a09999", 7]
let s:bright_black   = ["#5a4e4e", 8]
let s:bright_red     = ["#f5875b", 9]
let s:bright_green   = ["#9abe86", 10]
let s:bright_yellow  = ["#ffd791", 11]
let s:bright_blue    = ["#89b7e1", 12]
let s:bright_magenta = ["#eea1d1", 13]
let s:bright_cyan    = ["#69b2ac", 14]
let s:bright_white   = ["#e6e3e3", 15]

let s:hard_black    = ['#080808', 232]
let s:grayscale1        = ['#372a2a', 235]
let s:grayscale2        = ['#5a4e4e', 236]
let s:grayscale3        = ['#7d7373', 237]
let s:grayscale4        = ['#a09999', 238]
let s:grayscale5        = ['#c3bebe', 239]
"}}}
" Setup Variables: {{{

let s:none = ['NONE', 'NONE']

if !exists('g:momiji_bold')
  let g:momiji_bold=1
endif

if !exists('g:momiji_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:momiji_italic=1
  else
    let g:momiji_italic=0
  endif
endif

if !exists('g:momiji_undercurl')
  let g:momiji_undercurl=1
endif

if !exists('g:momiji_underline')
  let g:momiji_underline=1
endif

if !exists('g:momiji_inverse')
  let g:momiji_inverse=1
endif

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:momiji_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:momiji_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:momiji_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:momiji_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:momiji_inverse == 0
  let s:inverse = ''
endif

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction
"}}}
" Momiji Hi Groups: {{{

" memoize common hi groups
call s:HL('MomijiWhite', s:white)
call s:HL('MomijiRed', s:red)
call s:HL('MomijiGreen', s:green)
call s:HL('MomijiYellow', s:yellow)
call s:HL('MomijiBlue', s:blue)
call s:HL('MomijiMagenta', s:magenta)
call s:HL('MomijiCyan', s:cyan)
call s:HL('MomijiBlack', s:black)
call s:HL('MomijiRedbold', s:red, s:none, s:bold)
call s:HL('MomijiGreenbold', s:green, s:none, s:bold)
call s:HL('MomijiYellowbold', s:yellow, s:none, s:bold)
call s:HL('MomijiBluebold', s:blue, s:none, s:bold)
call s:HL('MomijiMagentabold', s:magenta, s:none, s:bold)
call s:HL('MomijiCyanbold', s:cyan, s:none, s:bold)

call s:HL('MomijiBrightRed', s:bright_red, s:none)
call s:HL('MomijiBrightGreen', s:bright_green, s:none)
call s:HL('MomijiBrightYellow', s:bright_yellow, s:none)
call s:HL('MomijiBrightBlue', s:bright_blue, s:none)
call s:HL('MomijiBrightMagenta', s:bright_magenta, s:none)
call s:HL('MomijiBrightCyan', s:bright_cyan, s:none)
call s:HL('MomijiBrightBlack', s:bright_black, s:none)
call s:HL('MomijiBrightWhite', s:bright_white)

" special
call s:HL('MomijiBrightRedBold', s:bright_red, s:none, s:bold)
call s:HL('MomijiGrayscale1',        s:grayscale1,     s:none)
call s:HL('MomijiGrayscale2',        s:grayscale2,     s:none)
call s:HL('MomijiGrayscale3',        s:grayscale3,     s:none)
call s:HL('MomijiGrayscale4',        s:grayscale4,     s:none)
call s:HL('MomijiGrayscale5',        s:grayscale5,     s:none)

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
" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:bright_white, s:black)

if version >= 700
  " Screen line that the cursor is
  highlight CursorLine NONE
  highlight CursorLine term=underline cterm=underline gui=underline
  " Screen column that the cursor is
  call s:HL('CursorColumn', s:none, s:bright_black)

  " Tab pages line filler
  call s:HL('TabLineFill', s:green, s:black)
  " Active tab page label
  call s:HL('TabLineSel', s:red, s:black, s:bold)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:yellow, s:bright_black, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:bright_black)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, s:black)
endif

hi! link NonText MomijiBrightBlack
hi! link SpecialKey MomijiBrightBlack
hi! link Whitespace MomijiBrightBlack

call s:HL('Visual',    s:none,  s:black, s:inverse)
hi! link VisualNOS Visual

call s:HL('Search',    s:black, s:yellow)
call s:HL('IncSearch', s:black, s:yellow)

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bright_white, s:bright_black)
call s:HL('StatusLineNC', s:white, s:black, s:underline)

" The column separating vertically split windows
call s:HL('VertSplit', s:bright_white, s:black)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:black, s:bold)

" Directory names, special names in listing
hi! link Directory MomijiGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title MomijiGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:bright_white, s:red)
" More prompt: -- More --
hi! link MoreMsg MomijiYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg MomijiYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question MomijiBrightRedBold
" Warning messages
hi! link WarningMsg MomijiRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:white)

" Column where signs are displayed
call s:HL('SignColumn', s:none, s:black)

" Line used for closed folds
call s:HL('Folded', s:white, s:black, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:white, s:black)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

hi! link Special MomijiBrightYellow

call s:HL('Comment', s:white, s:none, s:italic)
call s:HL('Todo', s:bright_white, s:black, s:bold . s:italic)
call s:HL('Error', s:bright_red, s:black, s:bold . s:inverse)

" String constant: "this is a string"
call s:HL('String',  s:green)

" Generic statement
hi! link Statement MomijiYellow
" if, then, else, endif, swicth, etc.
hi! link Conditional MomijiYellow
" for, do, while, etc.
hi! link Repeat MomijiYellow
" case, default, etc.
hi! link Label MomijiYellow
" try, catch, throw
hi! link Exception MomijiRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword MomijiRed

" Variable name
hi! link Identifier MomijiBrightBlue
" Function name
hi! link Function MomijiBlue

" Generic preprocessor
hi! link PreProc MomijiCyan
" Preprocessor #include
hi! link Include MomijiCyan
" Preprocessor #define
hi! link Define MomijiCyan
" Same as Define
hi! link Macro MomijiCyan
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit MomijiCyan

" Generic constant
hi! link Constant MomijiBrightMagenta
" Character constant: 'c', '/n'
hi! link Character MomijiBrightMagenta
" Boolean constant: TRUE, false
hi! link Boolean MomijiBrightMagenta
" Number constant: 234, 0xff
hi! link Number MomijiBrightMagenta
" Floating point constant: 2.3e10
hi! link Float MomijiBrightMagenta

" Generic type
hi! link Type MomijiBrightRed
" static, register, volatile, etc
hi! link StorageClass MomijiBrightRed
" struct, union, enum, etc.
hi! link Structure MomijiCyan
" typedef
hi! link Typedef MomijiYellow

" }}}
" Completion Menu: {{{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:bright_white, s:bright_black)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:black, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:black)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:black)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:bright_red, s:black)
call s:HL('DiffAdd',    s:bright_blue, s:black)
call s:HL('DiffChange', s:cyan, s:black)
call s:HL('DiffText',   s:bright_yellow, s:black)

" }}}
" Spelling: {{{

if has("spell")
  " Not capitalised word, or compile warnings
  call s:HL('SpellCap',   s:none, s:none, s:underline . s:italic)
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" GitGutter: {{{

hi! link GitGutterAdd MomijiGreen
hi! link GitGutterChange MomijiCyan
hi! link GitGutterDelete MomijiBrightRed
hi! link GitGutterChangeDelete MomijiCyan

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile MomijiGreen
hi! link gitcommitDiscardedFile MomijiBrightRed

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded MomijiBrightGreen
hi! link diffRemoved MomijiBrightRed
hi! link diffChanged MomijiCyan

hi! link diffFile MomijiRed
hi! link diffNewFile MomijiBlue

hi! link diffLine MomijiBrightBlack

" }}}
" Html: {{{

hi! link htmlTag MomijiBlue
hi! link htmlEndTag MomijiBlue

hi! link htmlTagName MomijiCyanBold
hi! link htmlArg MomijiCyan

hi! link htmlScriptTag MomijiMagenta
hi! link htmlSpecialTagName MomijiCyanBold

call s:HL('htmlLink', s:bright_white, s:none, s:underline)

hi! link htmlSpecialChar MomijiYellow

call s:HL('htmlBold', s:bright_white, s:black, s:bold)
call s:HL('htmlBoldUnderline', s:bright_white, s:black, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:bright_white, s:black, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:bright_white, s:black, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:bright_white, s:black, s:underline)
call s:HL('htmlUnderlineItalic', s:bright_white, s:black, s:underline . s:italic)
call s:HL('htmlItalic', s:bright_white, s:black, s:italic)

" }}}
" Xml: {{{

hi! link xmlTag MomijiBlue
hi! link xmlEndTag MomijiBlue
hi! link xmlTagName MomijiBlue
hi! link xmlEqual MomijiBlue
hi! link docbkKeyword MomijiCyanBold

hi! link xmlDocTypeDecl MomijiWhite
hi! link xmlDocTypeKeyword MomijiMagenta
hi! link xmlCdataStart MomijiWhite
hi! link xmlCdataCdata MomijiMagenta
hi! link dtdFunction MomijiWhite
hi! link dtdTagName MomijiMagenta

hi! link xmlAttrib MomijiCyan
hi! link xmlProcessingDelim MomijiWhite
hi! link dtdParamEntityPunct MomijiWhite
hi! link dtdParamEntityDPunct MomijiWhite
hi! link xmlAttribPunct MomijiWhite

hi! link xmlEntity MomijiYellow
hi! link xmlEntityPunct MomijiYellow
" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:bright_white, s:none, s:bold . s:italic)

hi! link vimNotation MomijiYellow
hi! link vimBracket MomijiYellow
hi! link vimMapModKey MomijiYellow
hi! link vimFuncSID MomijiBrightWhite
hi! link vimSetSep MomijiBrightWhite
hi! link vimSep MomijiBrightWhite
hi! link vimContinue MomijiBrightWhite

" }}}
" C: {{{

hi! link cOperator MomijiMagenta
hi! link cStructure MomijiYellow

" }}}
" Python: {{{

hi! link pythonBuiltin Type
hi! link pythonBuiltinObj Type
hi! link pythonBuiltinFunc MomijiBrightGreen
hi! link pythonFunction Function
hi! link pythonDecorator MomijiRed
hi! link pythonInclude Include
hi! link pythonImport Include
hi! link pythonRun MomijiBlue
hi! link pythonCoding MomijiBlue
hi! link pythonOperator MomijiRed
hi! link pythonExceptions MomijiBrightRed
hi! link pythonBoolean MomijiMagenta
hi! link pythonDot Text
hi! link pythonStatement Statement

" }}}
" CSS: {{{

hi! link cssBraces MomijiBlue
hi! link cssFunctionName MomijiYellow
hi! link cssIdentifier MomijiYellow
hi! link cssClassName MomijiGreen
hi! link cssColor MomijiBlue
hi! link cssSelectorOp MomijiBlue
hi! link cssSelectorOp2 MomijiBlue
hi! link cssImportant MomijiGreen

hi! link cssTextProp MomijiCyan
hi! link cssAnimationProp MomijiCyan
hi! link cssUIProp MomijiYellow
hi! link cssTransformProp MomijiCyan
hi! link cssTransitionProp MomijiCyan
hi! link cssPrintProp MomijiCyan
hi! link cssPositioningProp MomijiYellow
hi! link cssBoxProp MomijiCyan
hi! link cssFontDescriptorProp MomijiCyan
hi! link cssFlexibleBoxProp MomijiCyan
hi! link cssBorderOutlineProp MomijiCyan
hi! link cssBackgroundProp MomijiCyan
hi! link cssMarginProp MomijiCyan
hi! link cssListProp MomijiCyan
hi! link cssTableProp MomijiCyan
hi! link cssFontProp MomijiCyan
hi! link cssPaddingProp MomijiCyan
hi! link cssDimensionProp MomijiCyan
hi! link cssRenderProp MomijiCyan
hi! link cssColorProp MomijiCyan
hi! link cssGeneratedContentProp MomijiCyan

" }}}
" JavaScript: {{{

hi! link jsRegexpString MomijiMagenta
hi! link jsArrowFunction Function
hi! link jsFunction Function

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter MomijiGreen
hi! link rubyInterpolationDelimiter MomijiCyan

" }}}
" Go: {{{

hi! link goPackage Keyword
hi! link goImport Include
hi! link goFunctionCall MomijiBrightGreen

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:bright_white, s:none, s:italic)

hi! link markdownH1 MomijiGreenBold
hi! link markdownH2 MomijiGreenBold
hi! link markdownH3 MomijiYellowBold
hi! link markdownH4 MomijiYellowBold
hi! link markdownH5 MomijiYellow
hi! link markdownH6 MomijiYellow

call s:HL('markdownCode', s:none, s:grayscale1)
call s:HL('markdownCodeBlock', s:none, s:grayscale1)
call s:HL('markdownCodeDelimiter', s:none, s:grayscale1)

hi! link markdownBlockquote MomijiWhite
hi! link markdownListMarker MomijiBlue
hi! link markdownOrderedListMarker MomijiBlue
hi! link markdownRule MomijiWhite
hi! link markdownHeadingRule MomijiWhite

hi! link markdownUrlDelimiter MomijiBrightWhite
hi! link markdownLinkDelimiter MomijiBrightWhite
hi! link markdownLinkTextDelimiter MomijiBrightWhite

hi! link markdownHeadingDelimiter MomijiYellow
hi! link markdownUrl MomijiCyan
hi! link markdownUrlTitleDelimiter MomijiGreen

call s:HL('markdownLinkText', s:white, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Json: {{{

hi! link jsonBraces Text
hi! link jsonKeyword Type
hi! link jsonString MomijiBrightGreen
hi! link jsonQuote MomijiBlue

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
