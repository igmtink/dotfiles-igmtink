local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_onedark = require("lualine.themes.onedark")

local new_colors = {
  bgColor = "#FFDB58",
  fontColor = "#1B1B1B",
  green = "#3EFFDC",
  violet = "#FF61EF",
}

lualine_onedark.normal.a.bg = new_colors.bgColor
lualine_onedark.insert.a.bg = new_colors.green
lualine_onedark.visual.a.bg = new_colors.violet
lualine_onedark.command = {
  a = {
    gui = "bold",
    bg = new_colors.bgColor,
    fg = new_colors.fontColor
  },
}

lualine.setup({
  options = {
    theme = lualine_onedark
  }
})
