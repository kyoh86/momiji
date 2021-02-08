let s:black          = ["#140c0c", 0]    " =rgb( 20,  12,  12)  =rgb(  7.8%,   4.7%,   4.7%)
let s:red            = ["#da5774", 1]    " =rgb(218,  87, 116)  =rgb( 85.5%,  34.1%,  45.5%)
let s:green          = ["#348c4e", 2]    " =rgb( 52, 140,  78)  =rgb( 20.4%,  54.9%,  30.6%)
let s:yellow         = ["#e7a82b", 3]    " =rgb(231, 168,  43)  =rgb( 90.6%,  65.9%,  16.9%)
let s:blue           = ["#4884d2", 4]    " =rgb( 72, 132, 210)  =rgb( 28.2%,  51.8%,  82.4%)
let s:magenta        = ["#a55aaa", 5]    " =rgb(165,  90, 170)  =rgb( 64.7%,  35.3%,  66.7%)
let s:cyan           = ["#1f90a8", 6]    " =rgb( 31, 144, 168)  =rgb( 12.2%,  56.5%,  65.9%)
let s:white          = ["#a09999", 7]    " =rgb(160, 153, 153)  =rgb( 62.7%,  60.0%,  60.0%)
let s:bright_black   = ["#5a4e4e", 8]    " =rgb( 90,  78,  78)  =rgb( 35.3%,  30.6%,  30.6%)
let s:bright_red     = ["#f5875b", 9]    " =rgb(245, 135,  91)  =rgb( 96.1%,  52.9%,  35.7%)
let s:bright_green   = ["#9abe86", 10]   " =rgb(154, 190, 134)  =rgb( 60.4%,  74.5%,  52.5%)
let s:bright_yellow  = ["#ffd791", 11]   " =rgb(255, 215, 145)  =rgb(100.0%,  84.3%,  56.9%)
let s:bright_blue    = ["#89b7e1", 12]   " =rgb(137, 183, 225)  =rgb( 53.7%,  71.8%,  88.2%)
let s:bright_magenta = ["#eea1d1", 13]   " =rgb(238, 161, 209)  =rgb( 93.3%,  63.1%,  82.0%)
let s:bright_cyan    = ["#69b2ac", 14]   " =rgb(105, 178, 172)  =rgb( 41.2%,  69.8%,  67.5%)
let s:bright_white   = ["#e6e3e3", 15]   " =rgb(230, 227, 227)  =rgb( 90.2%,  89.0%,  89.0%)
let s:hard_black     = ['#080808', 232]  " =rgb(  8,   8,   8)  =rgb(  3.1%,   3.1%,   3.1%)
let s:grayscale1     = ['#372a2a', 235]  " =rgb( 55,  42,  42)  =rgb( 21.6%,  16.5%,  16.5%)
let s:grayscale2     = ['#5a4e4e', 236]  " =rgb( 90,  78,  78)  =rgb( 35.3%,  30.6%,  30.6%)
let s:grayscale3     = ['#7d7373', 237]  " =rgb(125, 115, 115)  =rgb( 49.0%,  45.1%,  45.1%)
let s:grayscale4     = ['#a09999', 238]  " =rgb(160, 153, 153)  =rgb( 62.7%,  60.0%,  60.0%)
let s:grayscale5     = ['#c3bebe', 239]  " =rgb(195, 190, 190)  =rgb( 76.5%,  74.5%,  74.5%)

function! momiji#gui(name)
  return momiji#palette(a:name)[0]
endfunction

function! momiji#cterm(name)
  return momiji#palette(a:name)[1]
endfunction

function! momiji#palette(name)
  return get(s:, a:name, [])
endfunction

" Set a highlight group.
" `params` contains some options like below.
"   - fg     color
"   - bg     color
"   - empha  list<"bold"|"italic"|"inverse">
"   - guisp  list<"underline"|"undercurl">
"
" Which color for fg or bg you can get it from momiji#palette:
"   call momiji#highlight(Pmenu, {'fg': momiji#palette('red')})
function! momiji#highlight(group, params)
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
