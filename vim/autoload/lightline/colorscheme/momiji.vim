" -----------------------------------------------------------------------------
" File: momiji.vim
" Description: Momiji colorscheme for Lightline (itchyny/lightline.vim)
" Author: Roosta <mail@roosta>
" Source: https://github.com/morhetz/gruvbox/blob/master/autoload/lightline/colorscheme/gruvbox.vim
" Last Modified: 2017-03-28
" -----------------------------------------------------------------------------

function! s:getSrcColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui") 
  let termColor = synIDattr(hlID(a:group), "fg", "cterm") 
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')

  let s:black        = s:getSrcColor('MomijiBlack')
  let s:bright_white = s:getSrcColor('MomijiBrightWhite')
  let s:bright_black = s:getSrcColor('MomijiBrightBlack')
  let s:white        = s:getSrcColor('MomijiWhite')
  let s:yellow       = s:getSrcColor('MomijiYellow')
  let s:blue         = s:getSrcColor('MomijiBlue')
  let s:bright_blue  = s:getSrcColor('MomijiBrightBlue')
  let s:cyan         = s:getSrcColor('MomijiCyan')
  let s:bright_cyan  = s:getSrcColor('MomijiBrightCyan')
  let s:red          = s:getSrcColor('MomijiRed')
  let s:bright_red   = s:getSrcColor('MomijiBrightRed')
  let s:magenta      = s:getSrcColor('MomijiMagenta')
  let s:green        = s:getSrcColor('MomijiGreen')
  let s:bright_green = s:getSrcColor('MomijiBrightGreen')
  let s:xgray1       = s:getSrcColor('MomijiXgray1')
  let s:xgray2       = s:getSrcColor('MomijiXgray2')
  let s:xgray4       = s:getSrcColor('MomijiXgray4')
  let s:xgray4       = s:getSrcColor('MomijiXgray4')
  let s:xgray5       = s:getSrcColor('MomijiXgray5')

  let s:p                 = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left     = [ [ s:bright_white, s:xgray4 ], [ s:bright_white, s:xgray2 ] ]
  let s:p.normal.right    = [ [ s:bright_white, s:xgray4 ], [ s:bright_white, s:xgray2 ] ]
  let s:p.normal.middle   = [ [ s:bright_white, s:bright_black ] ]
  let s:p.inactive.right  = [ [ s:white, s:bright_black ], [ s:white, s:bright_black ] ]
  let s:p.inactive.left   = [ [ s:white, s:bright_black ], [ s:white, s:bright_black ] ]
  let s:p.inactive.middle = [ [ s:xgray5, s:bright_black ] ]
  let s:p.insert.left     = [ [ s:black, s:bright_white ], [ s:black, s:white ] ]
  let s:p.insert.right    = [ [ s:black, s:bright_white ], [ s:black, s:white ] ]
  let s:p.insert.middle   = [ [ s:bright_white, s:bright_black ] ]
  let s:p.replace.left    = [ [ s:bright_white, s:bright_red ], [ s:black, s:white ] ]
  let s:p.replace.right   = [ [ s:bright_white, s:bright_red ], [ s:black, s:white ] ]
  let s:p.replace.middle  = [ [ s:bright_white, s:bright_black ] ]
  let s:p.visual.left     = [ [ s:black, s:cyan ], [ s:bright_white, s:xgray4 ] ]
  let s:p.visual.right    = [ [ s:black, s:cyan ], [ s:bright_white, s:xgray4 ] ]
  let s:p.visual.middle   = [ [ s:bright_white, s:bright_black ] ]
  let s:p.tabline.left    = [ [ s:bright_white, s:bright_black ] ]
  let s:p.tabline.tabsel  = [ [ s:black, s:white ] ]
  let s:p.tabline.middle  = [ [ s:black, s:bright_black ] ]
  let s:p.tabline.right   = [ [ s:black, s:bright_white ] ]
  let s:p.normal.error    = [ [ s:bright_white, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:bright_red ] ]

  let g:lightline#colorscheme#momiji#palette = lightline#colorscheme#flatten(s:p)
endif
