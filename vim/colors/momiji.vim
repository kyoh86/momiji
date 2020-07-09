" 'momiji.vim' -- Vim color scheme.
" Maintainer:   kyoh86 (master@kyoh86.dev)
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

let s:hard_black     = ['#080808', 232]
let s:grayscale1     = ['#372a2a', 235]
let s:grayscale2     = ['#5a4e4e', 236]
let s:grayscale3     = ['#7d7373', 237]
let s:grayscale4     = ['#a09999', 238]
let s:grayscale5     = ['#c3bebe', 239]
"}}}
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
  " params: fg, bg, empha, guisp
  let l:histr = [ 'highlight', a:group ]

  let l:fg = get(a:params, 'fg', [])
  if len(l:fg) >= 2
    call extend(l:histr, ['guifg=' . l:fg[0], 'ctermfg=' . l:fg[1]])
  endif

  let l:bg = get(a:params, 'bg', [])
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
" }}}

" Vanilla colorscheme ---------------------------------------------------------
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
call s:H('Cursor', {'empha': [s:inverse]})
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
highlight! link PreProc MomijiCyan
" Preprocessor #include
highlight! link Include MomijiCyan
" Preprocessor #define
highlight! link Define MomijiCyan
" Same as Define
highlight! link Macro MomijiCyan
" Preprocessor #if, #else, #endif, etc.
highlight! link PreCondit MomijiCyan

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
highlight! link Type MomijiBrightRed
" static, register, volatile, etc
highlight! link StorageClass MomijiBrightRed
" struct, union, enum, etc.
highlight! link Structure MomijiCyan
" typedef
highlight! link Typedef MomijiYellow
" }}}
" Completion Menu: {{{
" Popup menu: normal item
call s:H('Pmenu', {'fg': s:bright_white, 'bg': s:grayscale1})
" Popup menu: selected item
call s:H('PmenuSel', {'fg': s:black, 'bg': s:blue, 'empha': [s:bold]})
" Popup menu: scrollbar
call s:H('PmenuSbar', {'bg': s:black})
" Popup menu: scrollbar thumb
call s:H('PmenuThumb', {'bg': s:black})
" }}}
" Diffs: {{{
call s:H('DiffDelete', {'fg': s:bright_red, 'bg': s:black})
call s:H('DiffAdd', {'fg': s:bright_blue, 'bg': s:black})
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

" Plugin specific -------------------------------------------------------------
" GitGutter: {{{
highlight! link GitGutterAdd MomijiGreen
highlight! link GitGutterChange MomijiCyan
highlight! link GitGutterDelete MomijiBrightRed
highlight! link GitGutterChangeDelete MomijiCyan
" }}}
" GitCommit: "{{{
highlight! link gitcommitSelectedFile MomijiGreen
highlight! link gitcommitDiscardedFile MomijiBrightRed
" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{
highlight! link diffAdded MomijiBrightGreen
highlight! link diffRemoved MomijiBrightRed
highlight! link diffChanged MomijiCyan

highlight! link diffFile MomijiRed
highlight! link diffNewFile MomijiBlue

highlight! link diffLine MomijiBrightBlack
" }}}
" Html: {{{
highlight! link htmlTag MomijiBlue
highlight! link htmlEndTag MomijiBlue

highlight! link htmlTagName MomijiCyanBold
highlight! link htmlArg MomijiCyan

highlight! link htmlScriptTag MomijiMagenta
highlight! link htmlSpecialTagName MomijiCyanBold

call s:H('htmlLink', {'fg': s:bright_white, 'empha': [s:underline]})

highlight! link htmlSpecialChar MomijiYellow

call s:H('htmlBold', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:bold]})
call s:H('htmlBoldUnderline', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:bold, s:underline]})
call s:H('htmlBoldItalic', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:bold, s:italic]})
call s:H('htmlBoldUnderlineItalic', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:bold, s:underline, s:italic]})

call s:H('htmlUnderline', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:underline]})
call s:H('htmlUnderlineItalic', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:underline, s:italic]})
call s:H('htmlItalic', {'fg': s:bright_white, 'bg': s:black, 'empha': [s:italic]})
" }}}
" Xml: {{{
highlight! link xmlTag MomijiBlue
highlight! link xmlEndTag MomijiBlue
highlight! link xmlTagName MomijiBlue
highlight! link xmlEqual MomijiBlue
highlight! link docbkKeyword MomijiCyanBold

highlight! link xmlDocTypeDecl MomijiWhite
highlight! link xmlDocTypeKeyword MomijiMagenta
highlight! link xmlCdataStart MomijiWhite
highlight! link xmlCdataCdata MomijiMagenta
highlight! link dtdFunction MomijiWhite
highlight! link dtdTagName MomijiMagenta

highlight! link xmlAttrib MomijiCyan
highlight! link xmlProcessingDelim MomijiWhite
highlight! link dtdParamEntityPunct MomijiWhite
highlight! link dtdParamEntityDPunct MomijiWhite
highlight! link xmlAttribPunct MomijiWhite

highlight! link xmlEntity MomijiYellow
highlight! link xmlEntityPunct MomijiYellow
" }}}
" Vim: {{{
call s:H('vimCommentTitle', {'fg': s:bright_white, 'empha': [s:bold, s:italic]})

highlight! link vimNotation MomijiYellow
highlight! link vimBracket MomijiYellow
highlight! link vimMapModKey MomijiYellow
highlight! link vimFuncSID MomijiBrightWhite
highlight! link vimSetSep MomijiBrightWhite
highlight! link vimSep MomijiBrightWhite
highlight! link vimContinue MomijiBrightWhite
" }}}
" C: {{{
highlight! link cOperator MomijiMagenta
highlight! link cStructure MomijiYellow
" }}}
" Python: {{{
highlight! link pythonBuiltin Type
highlight! link pythonBuiltinObj Type
highlight! link pythonBuiltinFunc MomijiBrightGreen
highlight! link pythonFunction Function
highlight! link pythonDecorator MomijiRed
highlight! link pythonInclude Include
highlight! link pythonImport Include
highlight! link pythonRun MomijiBlue
highlight! link pythonCoding MomijiBlue
highlight! link pythonOperator MomijiRed
highlight! link pythonExceptions MomijiBrightRed
highlight! link pythonBoolean MomijiMagenta
highlight! link pythonDot Text
highlight! link pythonStatement Statement
" }}}
" CSS: {{{
highlight! link cssBraces MomijiBlue
highlight! link cssFunctionName MomijiYellow
highlight! link cssIdentifier MomijiYellow
highlight! link cssClassName MomijiGreen
highlight! link cssColor MomijiBlue
highlight! link cssSelectorOp MomijiBlue
highlight! link cssSelectorOp2 MomijiBlue
highlight! link cssImportant MomijiGreen

highlight! link cssTextProp MomijiCyan
highlight! link cssAnimationProp MomijiCyan
highlight! link cssUIProp MomijiYellow
highlight! link cssTransformProp MomijiCyan
highlight! link cssTransitionProp MomijiCyan
highlight! link cssPrintProp MomijiCyan
highlight! link cssPositioningProp MomijiYellow
highlight! link cssBoxProp MomijiCyan
highlight! link cssFontDescriptorProp MomijiCyan
highlight! link cssFlexibleBoxProp MomijiCyan
highlight! link cssBorderOutlineProp MomijiCyan
highlight! link cssBackgroundProp MomijiCyan
highlight! link cssMarginProp MomijiCyan
highlight! link cssListProp MomijiCyan
highlight! link cssTableProp MomijiCyan
highlight! link cssFontProp MomijiCyan
highlight! link cssPaddingProp MomijiCyan
highlight! link cssDimensionProp MomijiCyan
highlight! link cssRenderProp MomijiCyan
highlight! link cssColorProp MomijiCyan
highlight! link cssGeneratedContentProp MomijiCyan
" }}}
" JavaScript: {{{
highlight! link jsRegexpString MomijiMagenta
highlight! link jsArrowFunction Function
highlight! link jsFunction Function
" }}}
" Ruby: {{{
highlight! link rubyStringDelimiter MomijiGreen
highlight! link rubyInterpolationDelimiter MomijiCyan
" }}}
" Go: {{{
highlight! link goPackage Keyword
highlight! link goImport Include
highlight! link goFunctionCall MomijiBrightGreen
" }}}
" Markdown: {{{
call s:H('markdownItalic', {'fg': s:bright_white, 'empha': [s:italic]})

highlight! link markdownH1 MomijiGreenBold
highlight! link markdownH2 MomijiGreenBold
highlight! link markdownH3 MomijiYellowBold
highlight! link markdownH4 MomijiYellowBold
highlight! link markdownH5 MomijiYellow
highlight! link markdownH6 MomijiYellow

call s:H('markdownCode', {'bg': s:grayscale1})
call s:H('markdownCodeBlock', {'bg': s:grayscale1})
call s:H('markdownCodeDelimiter', {'bg': s:grayscale1})

highlight! link markdownBlockquote MomijiWhite
highlight! link markdownListMarker MomijiBlue
highlight! link markdownOrderedListMarker MomijiBlue
highlight! link markdownRule MomijiWhite
highlight! link markdownHeadingRule MomijiWhite

highlight! link markdownUrlDelimiter MomijiBrightWhite
highlight! link markdownLinkDelimiter MomijiBrightWhite
highlight! link markdownLinkTextDelimiter MomijiBrightWhite

highlight! link markdownHeadingDelimiter MomijiYellow
highlight! link markdownUrl MomijiCyan
highlight! link markdownUrlTitleDelimiter MomijiGreen

call s:H('markdownLinkText', {'fg': s:white, 'empha': [s:underline]})
highlight! link markdownIdDeclaration markdownLinkText
" }}}
" Json: {{{
highlight! link jsonBraces Text
highlight! link jsonKeyword Type
highlight! link jsonString MomijiBrightGreen
highlight! link jsonQuote MomijiBlue
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
