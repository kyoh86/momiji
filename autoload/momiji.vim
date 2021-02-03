function momiji#gui(name)
  return momiji#palette(a:name)[0]
endfunction

function momiji#cterm(name)
  return momiji#palette(a:name)[1]
endfunction

function momiji#palette(name)
  return get(s:, a:name, [])
endfunction

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
