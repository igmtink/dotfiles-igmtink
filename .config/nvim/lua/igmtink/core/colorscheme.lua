local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
  print("Colorscheme not found!")
  return
end

require('onedark').setup {
    style = 'darker', -- Selected theme
    transparent = true, -- Transparent background

    lualine = {
      transparent = false,
    },
}
require('onedark').load()
