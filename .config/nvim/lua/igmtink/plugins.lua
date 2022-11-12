local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Status line
  use 'hoob3rt/lualine.nvim'

  -- Lsp Tools
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  -- Code Formatter
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  -- Auto-completion: Lspkind and CMP
  use 'onsails/lspkind-nvim' -- Vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion

  -- Snippet
  use 'L3MON4D3/LuaSnip'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Auto tag & Auto pair
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- File Explorer
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- File Dev Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Tab
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  -- Color higlighter
  use 'norcalli/nvim-colorizer.lua'

  -- Gitsigns
  use 'lewis6991/gitsigns.nvim'
    
  -- Tmux & Nvim Navigation
  use 'christoomey/vim-tmux-navigator'

end)
