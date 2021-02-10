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
  let s:black          = g:momiji_palette.black
  let s:lightwhite     = g:momiji_palette.lightwhite
  let s:lightblack     = g:momiji_palette.lightblack
  let s:white          = g:momiji_palette.white
  let s:yellow         = g:momiji_palette.yellow
  let s:lightyellow    = g:momiji_palette.lightyellow
  let s:blue           = g:momiji_palette.blue
  let s:lightblue      = g:momiji_palette.lightblue
  let s:cyan           = g:momiji_palette.cyan
  let s:lightcyan      = g:momiji_palette.lightcyan
  let s:red            = g:momiji_palette.red
  let s:lightred       = g:momiji_palette.lightred
  let s:magenta        = g:momiji_palette.magenta
  let s:lightmagenta   = g:momiji_palette.lightmagenta
  let s:green          = g:momiji_palette.green
  let s:lightgreen     = g:momiji_palette.lightgreen
  let s:grayscale1     = g:momiji_palette.grayscale1
  let s:grayscale2     = g:momiji_palette.grayscale2
  let s:grayscale3     = g:momiji_palette.grayscale3
  let s:grayscale4     = g:momiji_palette.grayscale4
  let s:grayscale5     = g:momiji_palette.grayscale5

  let s:p                 = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left     = [ [ s:black, s:green ], [ s:black, s:lightgreen ] ]
  let s:p.normal.right    = [ [ s:black, s:green ], [ s:black, s:lightgreen ] ]
  let s:p.normal.middle   = [ [ s:lightgreen, s:lightblack ] ]

  let s:p.inactive.right  = [ [ s:white, s:lightblack ], [ s:white, s:lightblack ] ]
  let s:p.inactive.left   = [ [ s:white, s:lightblack ], [ s:white, s:lightblack ] ]
  let s:p.inactive.middle = [ [ s:grayscale5, s:lightblack ] ]

  let s:p.insert.left     = [ [ s:black, s:blue ], [ s:black, s:lightblue ] ]
  let s:p.insert.right    = [ [ s:black, s:blue ], [ s:black, s:lightblue ] ]
  let s:p.insert.middle   = [ [ s:lightblue, s:lightblack ] ]

  let s:p.replace.left    = [ [ s:black, s:magenta ], [ s:black, s:lightmagenta ] ]
  let s:p.replace.right   = [ [ s:black, s:magenta ], [ s:black, s:lightmagenta ] ]
  let s:p.replace.middle  = [ [ s:lightmagenta, s:lightblack ] ]

  let s:p.visual.left     = [ [ s:black, s:yellow ], [ s:black, s:lightyellow ] ]
  let s:p.visual.right    = [ [ s:black, s:yellow ], [ s:black, s:lightyellow ] ]
  let s:p.visual.middle   = [ [ s:lightyellow, s:lightblack ] ]

  let s:p.tabline.left    = [ [ s:lightwhite, s:lightblack ] ]
  let s:p.tabline.tabsel  = [ [ s:black, s:white ] ]
  let s:p.tabline.middle  = [ [ s:black, s:lightblack ] ]
  let s:p.tabline.right   = [ [ s:black, s:lightwhite ] ]

  let s:p.normal.error    = [ [ s:lightwhite, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

  let g:lightline#colorscheme#momiji#palette = lightline#colorscheme#flatten(s:p)
endif
