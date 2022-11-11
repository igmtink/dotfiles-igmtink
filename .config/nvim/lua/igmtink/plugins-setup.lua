-- Auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim and installs/updates/removes plugins when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- Add list of plugins to install
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  use "navarasu/onedark.nvim" -- Colorscheme

  use "christoomey/vim-tmux-navigator" -- Tmux & Split window navigation

  use "szw/vim-maximizer" -- Maximizes and restore current window

  use "tpope/vim-surround" -- Surrounding the text

  use "vim-scripts/ReplaceWithRegister" -- Copy the first text and replace it on the second text
   
  use "numToStr/Comment.nvim" -- Commenting line

  use "nvim-tree/nvim-tree.lua" -- File Explorer

  use "kyazdani42/nvim-web-devicons" -- Icons

  use "nvim-lualine/lualine.nvim" -- Statusline

  -- File Explorer Search
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
