" -----------------------------------------------------------------------------
" File: momiji.vim
" Description: Momiji colorscheme for Lightline (itchyny/lightline.vim)
" Author: kyoh86 <me@kyoh86.dev>
" -----------------------------------------------------------------------------

function! s:getSrcColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui") 
  let termColor = synIDattr(hlID(a:group), "fg", "cterm") 
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')

  let s:black         = s:getSrcColor('MomijiBlack')
  let s:bright_white  = s:getSrcColor('MomijiBrightWhite')
  let s:bright_black  = s:getSrcColor('MomijiBrightBlack')
  let s:white         = s:getSrcColor('MomijiWhite')
  let s:yellow        = s:getSrcColor('MomijiYellow')
  let s:bright_yellow = s:getSrcColor('MomijiBrightYellow')
  let s:blue          = s:getSrcColor('MomijiBlue')
  let s:bright_blue   = s:getSrcColor('MomijiBrightBlue')
  let s:cyan          = s:getSrcColor('MomijiCyan')
  let s:bright_cyan   = s:getSrcColor('MomijiBrightCyan')
  let s:red           = s:getSrcColor('MomijiRed')
  let s:bright_red    = s:getSrcColor('MomijiBrightRed')
  let s:magenta       = s:getSrcColor('MomijiMagenta')
  let s:bright_magenta       = s:getSrcColor('MomijiBrightMagenta')
  let s:green         = s:getSrcColor('MomijiGreen')
  let s:bright_green  = s:getSrcColor('MomijiBrightGreen')
  let s:grayscale1    = s:getSrcColor('MomijiGrayscale1')
  let s:grayscale2    = s:getSrcColor('MomijiGrayscale2')
  let s:grayscale3    = s:getSrcColor('MomijiGrayscale3')
  let s:grayscale4    = s:getSrcColor('MomijiGrayscale4')
  let s:grayscale5    = s:getSrcColor('MomijiGrayscale5')

  let s:p                 = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left     = [ [ s:black, s:green ], [ s:black, s:bright_green ] ]
  let s:p.normal.right    = [ [ s:black, s:green ], [ s:black, s:bright_green ] ]
  let s:p.normal.middle   = [ [ s:bright_green, s:bright_black ] ]

  let s:p.inactive.right  = [ [ s:white, s:bright_black ], [ s:white, s:bright_black ] ]
  let s:p.inactive.left   = [ [ s:white, s:bright_black ], [ s:white, s:bright_black ] ]
  let s:p.inactive.middle = [ [ s:grayscale5, s:bright_black ] ]

  let s:p.insert.left     = [ [ s:black, s:blue ], [ s:black, s:bright_blue ] ]
  let s:p.insert.right    = [ [ s:black, s:blue ], [ s:black, s:bright_blue ] ]
  let s:p.insert.middle   = [ [ s:bright_blue, s:bright_black ] ]

  let s:p.replace.left    = [ [ s:black, s:magenta ], [ s:black, s:bright_magenta ] ]
  let s:p.replace.right   = [ [ s:black, s:magenta ], [ s:black, s:bright_magenta ] ]
  let s:p.replace.middle  = [ [ s:bright_magenta, s:bright_black ] ]

  let s:p.visual.left     = [ [ s:black, s:yellow ], [ s:black, s:bright_yellow ] ]
  let s:p.visual.right    = [ [ s:black, s:yellow ], [ s:black, s:bright_yellow ] ]
  let s:p.visual.middle   = [ [ s:bright_yellow, s:bright_black ] ]

  let s:p.tabline.left    = [ [ s:bright_white, s:bright_black ] ]
  let s:p.tabline.tabsel  = [ [ s:black, s:white ] ]
  let s:p.tabline.middle  = [ [ s:black, s:bright_black ] ]
  let s:p.tabline.right   = [ [ s:black, s:bright_white ] ]

  let s:p.normal.error    = [ [ s:bright_white, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

  let g:lightline#colorscheme#momiji#palette = lightline#colorscheme#flatten(s:p)
endif
