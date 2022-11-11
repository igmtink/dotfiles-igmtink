local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- Recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- Configure nvim-tree
nvimtree.setup({
  -- Change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- Arrow when folder is closed
          arrow_open = "", -- Arrow when folder is open
        },
      },
    },
  },
  -- Disable window_picker for explorer to work well with window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
-- 	git = {
-- 		ignore = false,
-- 	},
})
