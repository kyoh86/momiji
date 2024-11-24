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
---@field brightblack string RGB(#rrggbb) color
---@field brightred string RGB(#rrggbb) color
---@field brightgreen string RGB(#rrggbb) color
---@field brightyellow string RGB(#rrggbb) color
---@field brightblue string RGB(#rrggbb) color
---@field brightmagenta string RGB(#rrggbb) color
---@field brightcyan string RGB(#rrggbb) color
---@field brightwhite string RGB(#rrggbb) color
---@field hardblack string RGB(#rrggbb) color
---@field gradation1 string RGB(#rrggbb) color
---@field gradation2 string RGB(#rrggbb) color
---@field gradation3 string RGB(#rrggbb) color
---@field gradation4 string RGB(#rrggbb) color
---@field gradation5 string RGB(#rrggbb) color

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
  brightblack = "#5a4e4e",
  brightred = "#f5875b",
  brightgreen = "#9abe86",
  brightyellow = "#ffd791",
  brightblue = "#89b7e1",
  brightmagenta = "#eea1d1",
  brightcyan = "#69b2ac",
  brightwhite = "#e6e3e3",
  hardblack = "#080808",
  gradation1 = "#372a2a",
  gradation2 = "#5a4e4e",
  gradation3 = "#7d7373",
  gradation4 = "#a09999",
  gradation5 = "#c3bebe",
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
---@field brightblack MomijiHighlightColor
---@field brightred MomijiHighlightColor
---@field brightgreen MomijiHighlightColor
---@field brightyellow MomijiHighlightColor
---@field brightblue MomijiHighlightColor
---@field brightmagenta MomijiHighlightColor
---@field brightcyan MomijiHighlightColor
---@field brightwhite MomijiHighlightColor
---@field hardblack MomijiHighlightColor
---@field gradation1 MomijiHighlightColor
---@field gradation2 MomijiHighlightColor
---@field gradation3 MomijiHighlightColor
---@field gradation4 MomijiHighlightColor
---@field gradation5 MomijiHighlightColor

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
  brightblack = { gui = "#5a4e4e", cterm = 8 },
  brightred = { gui = "#f5875b", cterm = 9 },
  brightgreen = { gui = "#9abe86", cterm = 10 },
  brightyellow = { gui = "#ffd791", cterm = 11 },
  brightblue = { gui = "#89b7e1", cterm = 12 },
  brightmagenta = { gui = "#eea1d1", cterm = 13 },
  brightcyan = { gui = "#69b2ac", cterm = 14 },
  brightwhite = { gui = "#e6e3e3", cterm = 15 },
  hardblack = { gui = "#080808", cterm = 232 },
  gradation1 = { gui = "#372a2a", cterm = 235 },
  gradation2 = { gui = "#5a4e4e", cterm = 236 },
  gradation3 = { gui = "#7d7373", cterm = 237 },
  gradation4 = { gui = "#a09999", cterm = 238 },
  gradation5 = { gui = "#c3bebe", cterm = 239 },
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
