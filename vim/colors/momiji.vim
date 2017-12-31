" 'momiji.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/morhetz/gruvbox

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

let s:black          = ["#140b0b", 0]
let s:red            = ["#da5774", 1]
let s:green          = ["#348c4e", 2]
let s:yellow         = ["#e7a430", 3]
let s:blue           = ["#4884d2", 4]
let s:magenta        = ["#a45aaa", 5]
let s:cyan           = ["#1f90a8", 6]
let s:white          = ["#7e868e", 7]
let s:bright_black   = ["#454545", 8]
let s:bright_red     = ["#ed784a", 9]
let s:bright_green   = ["#9abe86", 10]
let s:bright_yellow  = ["#e6cb90", 11]
let s:bright_blue    = ["#89b7e1", 12]
let s:bright_magenta = ["#eea1d1", 13]
let s:bright_cyan    = ["#69b2ac", 14]
let s:bright_white   = ["#e6e6e6", 15]

let s:hard_black    = ['#080808', 232]
let s:xgray1        = ['#262626', 235]
let s:xgray2        = ['#303030', 236]
let s:xgray3        = ['#3A3A3A', 237]
let s:xgray4        = ['#444444', 238]
let s:xgray5        = ['#4E4E4E', 239]
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

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
call s:HL('Normal', s:bright_white, s:black)

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine', s:none, s:black, s:underline)
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

hi! link NonText MomijiWhiteAlt
hi! link SpecialKey MomijiWhiteAlt
hi! link Whitespace MomijiWhiteAlt

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

hi! link Special MomijiBrightRed

call s:HL('Comment', s:white, s:none, s:italic)
call s:HL('Todo', s:bright_white, s:black, s:bold . s:italic)
call s:HL('Error', s:bright_red, s:black, s:bold . s:inverse)

" String constant: "this is a string"
call s:HL('String',  s:bright_green)

" Generic statement
hi! link Statement MomijiBlue
" if, then, else, endif, swicth, etc.
hi! link Conditional MomijiBlue
" for, do, while, etc.
hi! link Repeat MomijiBlue
" case, default, etc.
hi! link Label MomijiBlue
" try, catch, throw
hi! link Exception MomijiRed
" sizeof, "+", "*", etc.
hi! link Operator Normal
" Any other keyword
hi! link Keyword MomijiBlue

" Variable name
hi! link Identifier MomijiBlue
" Function name
hi! link Function MomijiGreenBold

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
hi! link Type MomijiBrightBrightMagenta
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
  call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" Sneak: {{{

hi! link SneakPluginTarget Search
hi! link SneakStreakTarget Search
call s:HL('SneakStreakMask', s:yellow, s:yellow)
hi! link SneakStreakStatusLine Search

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', s:blue], ['magenta', s:magenta],
      \ ['red',  s:red], ['yellow',     s:yellow]
    \ ]
endif

let g:rainbow_guifgs = [ s:blue, s:magenta, s:red, s:yellow ]
let g:rainbow_ctermfgs = [ 'yellow', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
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

hi! link diffAdded MomijiGreen
hi! link diffRemoved MomijiRed
hi! link diffChanged MomijiCyan

hi! link diffFile MomijiBrightRed
hi! link diffNewFile MomijiYellow

hi! link diffLine MomijiBlue

" }}}
" Html: {{{

hi! link htmlTag MomijiBlue
hi! link htmlEndTag MomijiBlue

hi! link htmlTagName MomijiCyanBold
hi! link htmlArg MomijiCyan

hi! link htmlScriptTag MomijiMagenta
hi! link htmlTagN MomijiFg1
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
" Clojure: {{{

hi! link clojureKeyword MomijiBlue
hi! link clojureCond MomijiBrightRed
hi! link clojureSpecial MomijiBrightRed
hi! link clojureDefine MomijiBrightRed

hi! link clojureFunc MomijiYellow
hi! link clojureRepeat MomijiYellow
hi! link clojureCharacter MomijiCyan
hi! link clojureStringEscape MomijiCyan
hi! link clojureException MomijiRed

hi! link clojureRegexp MomijiCyan
hi! link clojureRegexpEscape MomijiCyan
call s:HL('clojureRegexpCharClass', s:bright_white, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen MomijiFg3
hi! link clojureAnonArg MomijiYellow
hi! link clojureVariable MomijiBlue
hi! link clojureMacro MomijiBrightRed

hi! link clojureMeta MomijiYellow
hi! link clojureDeref MomijiYellow
hi! link clojureQuote MomijiYellow
hi! link clojureUnquote MomijiYellow
" }}}
" C: {{{

hi! link cOperator MomijiMagenta
hi! link cStructure MomijiYellow

" }}}
" Python: {{{

hi! link pythonBuiltin MomijiYellow
hi! link pythonBuiltinObj MomijiYellow
hi! link pythonBuiltinFunc MomijiYellow
hi! link pythonFunction MomijiCyan
hi! link pythonDecorator MomijiRed
hi! link pythonInclude MomijiBlue
hi! link pythonImport MomijiBlue
hi! link pythonRun MomijiBlue
hi! link pythonCoding MomijiBlue
hi! link pythonOperator MomijiRed
hi! link pythonExceptions MomijiMagenta
hi! link pythonBoolean MomijiMagenta
hi! link pythonDot MomijiBrightWhite

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
hi! link cssVendor MomijiFg1

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

hi! link javaScriptBraces MomijiFg1
hi! link javaScriptFunction MomijiCyan
hi! link javaScriptIdentifier MomijiRed
hi! link javaScriptMember MomijiBlue
hi! link javaScriptNumber MomijiMagenta
hi! link javaScriptNull MomijiMagenta
hi! link javaScriptParens MomijiBrightWhite

" }}}
" YAJS: {{{

hi! link javascriptImport MomijiCyan
hi! link javascriptExport MomijiCyan
hi! link javascriptClassKeyword MomijiCyan
hi! link javascriptClassExtends MomijiCyan
hi! link javascriptDefault MomijiCyan

hi! link javascriptClassName MomijiYellow
hi! link javascriptClassSuperName MomijiYellow
hi! link javascriptGlobal MomijiYellow

hi! link javascriptEndColons MomijiFg1
hi! link javascriptFuncArg MomijiFg1
hi! link javascriptGlobalMethod MomijiFg1
hi! link javascriptNodeGlobal MomijiFg1

" hi! link javascriptVariable MomijiYellow
hi! link javascriptVariable MomijiRed
" hi! link javascriptIdentifier MomijiYellow
" hi! link javascriptClassSuper MomijiYellow
hi! link javascriptIdentifier MomijiYellow
hi! link javascriptClassSuper MomijiYellow

" hi! link javascriptFuncKeyword MomijiYellow
" hi! link javascriptAsyncFunc MomijiYellow
hi! link javascriptFuncKeyword MomijiCyan
hi! link javascriptAsyncFunc MomijiCyan
hi! link javascriptClassStatic MomijiYellow

hi! link javascriptOperator MomijiRed
hi! link javascriptForOperator MomijiRed
hi! link javascriptYield MomijiRed
hi! link javascriptExceptions MomijiRed
hi! link javascriptMessage MomijiRed

hi! link javascriptTemplateSB MomijiCyan
hi! link javascriptTemplateSubstitution MomijiFg1

" hi! link javascriptLabel MomijiBlue
" hi! link javascriptObjectLabel MomijiBlue
" hi! link javascriptPropertyName MomijiBlue
hi! link javascriptLabel MomijiFg1
hi! link javascriptObjectLabel MomijiFg1
hi! link javascriptPropertyName MomijiFg1

hi! link javascriptLogicSymbols MomijiFg1
hi! link javascriptArrowFunc MomijiFg1

hi! link javascriptDocParamName MomijiFg4
hi! link javascriptDocTags MomijiFg4
hi! link javascriptDocNotation MomijiFg4
hi! link javascriptDocParamType MomijiFg4
hi! link javascriptDocNamedParamType MomijiFg4

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp MomijiBrightWhite
hi! link coffeeSpecialOp MomijiBrightWhite
hi! link coffeeCurly MomijiYellow
hi! link coffeeParen MomijiBrightWhite
hi! link coffeeBracket MomijiYellow

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter MomijiGreen
hi! link rubyInterpolationDelimiter MomijiCyan

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier MomijiRed
hi! link objcDirective MomijiBlue

" }}}
" Go: {{{

hi! link goConstants MomijiMagenta
hi! link goDeclaration MomijiBrightRed
hi! link goDeclType MomijiBlue
hi! link goBuiltins MomijiYellow

" }}}
" Lua: {{{

hi! link luaIn MomijiRed
hi! link luaFunction MomijiCyan
hi! link luaTable MomijiYellow

" }}}
" MoonScript: {{{

hi! link moonSpecialOp MomijiBrightWhite
hi! link moonExtendedOp MomijiBrightWhite
hi! link moonFunction MomijiBrightWhite
hi! link moonObject MomijiYellow

" }}}
" Java: {{{

hi! link javaAnnotation MomijiBlue
hi! link javaDocTags MomijiCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen MomijiBrightWhite
hi! link javaParen1 MomijiBrightWhite
hi! link javaParen2 MomijiBrightWhite
hi! link javaParen3 MomijiBrightWhite
hi! link javaParen4 MomijiBrightWhite
hi! link javaParen5 MomijiBrightWhite
hi! link javaOperator MomijiYellow

hi! link javaVarArg MomijiGreen

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter MomijiGreen
hi! link elixirInterpolationDelimiter MomijiCyan

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition MomijiFg1
hi! link scalaCaseFollowing MomijiFg1
hi! link scalaCapitalWord MomijiFg1
hi! link scalaTypeExtension MomijiFg1

hi! link scalaKeyword MomijiRed
hi! link scalaKeywordModifier MomijiRed

hi! link scalaSpecial MomijiCyan
hi! link scalaOperator MomijiFg1

hi! link scalaTypeDeclaration MomijiYellow
hi! link scalaTypeTypePostDeclaration MomijiYellow

hi! link scalaInstanceDeclaration MomijiFg1
hi! link scalaInterpolation MomijiCyan

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:bright_white, s:none, s:italic)

hi! link markdownH1 MomijiGreenBold
hi! link markdownH2 MomijiGreenBold
hi! link markdownH3 MomijiYellowBold
hi! link markdownH4 MomijiYellowBold
hi! link markdownH5 MomijiYellow
hi! link markdownH6 MomijiYellow

hi! link markdownCode MomijiCyan
hi! link markdownCodeBlock MomijiCyan
hi! link markdownCodeDelimiter MomijiCyan

hi! link markdownBlockquote MomijiWhite
hi! link markdownListMarker MomijiWhite
hi! link markdownOrderedListMarker MomijiWhite
hi! link markdownRule MomijiWhite
hi! link markdownHeadingRule MomijiWhite

hi! link markdownUrlDelimiter MomijiBrightWhite
hi! link markdownLinkDelimiter MomijiBrightWhite
hi! link markdownLinkTextDelimiter MomijiBrightWhite

hi! link markdownHeadingDelimiter MomijiYellow
hi! link markdownUrl MomijiMagenta
hi! link markdownUrlTitleDelimiter MomijiGreen

call s:HL('markdownLinkText', s:white, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

" hi! link haskellType MomijiYellow
" hi! link haskellOperators MomijiYellow
" hi! link haskellConditional MomijiCyan
" hi! link haskellLet MomijiYellow
"
hi! link haskellType MomijiFg1
hi! link haskellIdentifier MomijiFg1
hi! link haskellSeparator MomijiFg1
hi! link haskellDelimiter MomijiFg4
hi! link haskellOperators MomijiBlue
"
hi! link haskellBacktick MomijiYellow
hi! link haskellStatement MomijiYellow
hi! link haskellConditional MomijiYellow

hi! link haskellLet MomijiCyan
hi! link haskellDefault MomijiCyan
hi! link haskellWhere MomijiCyan
hi! link haskellBottom MomijiCyan
hi! link haskellBlockKeywords MomijiCyan
hi! link haskellImportKeywords MomijiCyan
hi! link haskellDeclKeyword MomijiCyan
hi! link haskellDeriving MomijiCyan
hi! link haskellAssocType MomijiCyan

hi! link haskellNumber MomijiMagenta
hi! link haskellPragma MomijiMagenta

hi! link haskellString MomijiGreen
hi! link haskellChar MomijiGreen

" }}}
" Json: {{{

hi! link jsonKeyword MomijiGreen
hi! link jsonQuote MomijiGreen
hi! link jsonBraces MomijiFg1
hi! link jsonString MomijiFg1

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
