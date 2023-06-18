local M = {}

---@class MomijiHighlightColors
---@field black string RGB(#rrggbb) color
---@field red string RGB(#rrggbb) color
---@field green string RGB(#rrggbb) color
---@field yellow string RGB(#rrggbb) color
---@field blue string RGB(#rrggbb) color
---@field magenta string RGB(#rrggbb) color
---@field cyan string RGB(#rrggbb) color
---@field white string RGB(#rrggbb) color
---@field lightblack string RGB(#rrggbb) color
---@field lightred string RGB(#rrggbb) color
---@field lightgreen string RGB(#rrggbb) color
---@field lightyellow string RGB(#rrggbb) color
---@field lightblue string RGB(#rrggbb) color
---@field lightmagenta string RGB(#rrggbb) color
---@field lightcyan string RGB(#rrggbb) color
---@field lightwhite string RGB(#rrggbb) color
---@field hardblack string RGB(#rrggbb) color
---@field grayscale1 string RGB(#rrggbb) color
---@field grayscale2 string RGB(#rrggbb) color
---@field grayscale3 string RGB(#rrggbb) color
---@field grayscale4 string RGB(#rrggbb) color
---@field grayscale5 string RGB(#rrggbb) color

---@type MomijiHighlightColors
M.colors = {
  black = "#140c0c",
  red = "#da5774",
  green = "#348c4e",
  yellow = "#e7a82b",
  blue = "#4884d2",
  magenta = "#a55aaa",
  cyan = "#1f90a8",
  white = "#a09999",
  lightblack = "#5a4e4e",
  lightred = "#f5875b",
  lightgreen = "#9abe86",
  lightyellow = "#ffd791",
  lightblue = "#89b7e1",
  lightmagenta = "#eea1d1",
  lightcyan = "#69b2ac",
  lightwhite = "#e6e3e3",
  hardblack = "#080808",
  grayscale1 = "#372a2a",
  grayscale2 = "#5a4e4e",
  grayscale3 = "#7d7373",
  grayscale4 = "#a09999",
  grayscale5 = "#c3bebe",
}

---@class MomijiHighlightColor
---@field gui string    Color for guibg/guifg
---@field cterm integer  Color index for ctermfg/ctermbg

---@class MomijiHighlightPalette
---@field black MomijiHighlightColor
---@field red MomijiHighlightColor
---@field green MomijiHighlightColor
---@field yellow MomijiHighlightColor
---@field blue MomijiHighlightColor
---@field magenta MomijiHighlightColor
---@field cyan MomijiHighlightColor
---@field white MomijiHighlightColor
---@field lightblack MomijiHighlightColor
---@field lightred MomijiHighlightColor
---@field lightgreen MomijiHighlightColor
---@field lightyellow MomijiHighlightColor
---@field lightblue MomijiHighlightColor
---@field lightmagenta MomijiHighlightColor
---@field lightcyan MomijiHighlightColor
---@field lightwhite MomijiHighlightColor
---@field hardblack MomijiHighlightColor
---@field grayscale1 MomijiHighlightColor
---@field grayscale2 MomijiHighlightColor
---@field grayscale3 MomijiHighlightColor
---@field grayscale4 MomijiHighlightColor
---@field grayscale5 MomijiHighlightColor

---@type MomijiHighlightPalette
M.palette = {
  black = { gui = "#140c0c", cterm = 0 },
  red = { gui = "#da5774", cterm = 1 },
  green = { gui = "#348c4e", cterm = 2 },
  yellow = { gui = "#e7a82b", cterm = 3 },
  blue = { gui = "#4884d2", cterm = 4 },
  magenta = { gui = "#a55aaa", cterm = 5 },
  cyan = { gui = "#1f90a8", cterm = 6 },
  white = { gui = "#a09999", cterm = 7 },
  lightblack = { gui = "#5a4e4e", cterm = 8 },
  lightred = { gui = "#f5875b", cterm = 9 },
  lightgreen = { gui = "#9abe86", cterm = 10 },
  lightyellow = { gui = "#ffd791", cterm = 11 },
  lightblue = { gui = "#89b7e1", cterm = 12 },
  lightmagenta = { gui = "#eea1d1", cterm = 13 },
  lightcyan = { gui = "#69b2ac", cterm = 14 },
  lightwhite = { gui = "#e6e3e3", cterm = 15 },
  hardblack = { gui = "#080808", cterm = 232 },
  grayscale1 = { gui = "#372a2a", cterm = 235 },
  grayscale2 = { gui = "#5a4e4e", cterm = 236 },
  grayscale3 = { gui = "#7d7373", cterm = 237 },
  grayscale4 = { gui = "#a09999", cterm = 238 },
  grayscale5 = { gui = "#c3bebe", cterm = 239 },
}

---@alias MomijiHighlightEmpha "bold"|"underline"|"undercurl"|"underdouble"|"underdotted"|"underdashed"|"strikethrough"|"reverse"|"inverse"|"italic"|"standout"|"altfont"|"nocombine"|"NONE"

---@class MomijiHighlightParam
---@field fg     MomijiHighlightColor    Foreground color
---@field bg     MomijiHighlightColor    Background color
---@field empha  MomijiHighlightEmpha[]  Special highlight for emphasis text.
---@field guisp  MomijiHighlightColor    Color for various underlines
---@field blend  integer                 Blend level for a highlight group

---Set a highlight group.
---Which color for "fg" or "bg", you can get it from "palette".
---e.g.: require"momiji.colors".highlight("Pmenu", { fg = require"momiji.colors".palette.red })
---@param group string    Target highlight group name.
---@param params MomijiHighlightParam
function M.highlight(group, params)
  vim.validate({
    group = { group, "string" },
    params = { params, "table" },
  })
  local histr = { "highlight", group }

  local fg = vim.tbl_get(params, "fg", "foreground") or {}
  if #fg >= 2 then
    vim.list_extend(histr, { "guifg=" .. fg.gui, "ctermfg=" .. fg.cterm })
  end

  local bg = vim.tbl_get(params, "bg", "background") or {}
  if #bg >= 2 then
    vim.list_extend(histr, { "guibg=" .. bg.gui, "ctermbg=" .. bg.cterm })
  end

  local empha = vim.tbl_filter(function(v)
    return v ~= ""
  end, params.empha or {})

  if #empha > 0 then
    local em = table.concat(empha, ",")
    vim.list_extend(histr, { "gui=" .. em, "cterm=" .. em })
  end

  local guisp = params.guisp or {}
  if #guisp > 0 then
    table.insert(histr, "guisp=" .. guisp.gui)
  end

  vim.cmd.execute(table.concat(histr, " "))
end

return M
