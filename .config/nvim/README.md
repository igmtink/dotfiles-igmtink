# Ivan's Neovim
![image](https://user-images.githubusercontent.com/117252369/201470312-bfdf0706-ef77-4713-afc4-9ca8a391aaf1.png)

![image](https://user-images.githubusercontent.com/117252369/201470348-5105f42e-a20c-4b08-912e-33a5479d1c9b.png)

![image](https://user-images.githubusercontent.com/117252369/201470467-240f9d89-9188-4826-948c-7ee7df66f69b.png)

***

## Requirements:

### Windows 11
1. Install [PowerShell Terminal](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-ph&gl=ph) = Shell
2. Install [Git](https://git-scm.com/download/win)
3. Install [Nodejs](https://nodejs.org/en/download/) = Package Manager
4. Install [Scoop](https://scoop.sh/) = Command-line Installer
5. Install [GCC](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#gcc) = Compiler
6. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) = Hyperextensible Vim-based Text Editor

### Ubuntu 22.04
1. Git:
```fish
sudo apt install git
```

2. Nodejs: 
```fish
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

3. GCC Complier: 
```fish
sudo apt install build-essential
```

4. Tree-sitter-CLI:
```fish
sudo npm install -g tree-sitter-cli
```

Neovim:
```fish
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

***

## Configuring Neovim
1. Check where your `nvim` config folder is located by typing this command inside `nvim`: `:echo stdpath('config')`
2. Create a file `init.lua` inside `nvim` config folder.
3. Create a two folder name it with `lua` `plugin`
4. Inside `plugin` folder create another folder name `lsp`
5. Create a folder name `yourUserName` inside `lua` folder, then copy all my files in `lua/igmtink` folder and paste it to your folder.
6. Install `packer.nvim` for plugin manager.
    - Install `packer.nvim` via [powershell](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-ph&gl=ph): `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`
7. Install your prefer language server (this is for lspconfig)
    - Sumneko Lua: `scoop lua-language-server`
    - Typscript: `npm install -g typescript-language-server typescript`
    - TailwindCSS: `npm install -g @tailwindcss/language-server`
    - CSS: `npm i -g vscode-langservers-extracted`
    - HTML: `npm i -g vscode-langservers-extracted`
    - Json Language Server: `npm i -g vscode-langservers-extracted`
    - Emmet Language Server: `npm install -g emmet-ls`
    - Astro: `npm install -g @astrojs/language-server`
    - Prettier: `npm install prettier` - For Formatter
    - Prettierd: `npm install -g @fsouza/prettierd` - For Formatter
    - Eslint_d: `npm install -g eslint_d` - For Linter
8. Open `nvim` text editor, just type `nvim` in your `powershell`
    - Install all plugins in `packer.nvim` by typing this command in `nvim`: `:PackerInstall`
9. After installing all plugins, you can now copy and paste all my `lua` files to your `nvim` config folder.
10. After copying all my `lua` files, open again your `nvim` then type this command `:TSUpdate` to download all requirements for `Tree-Sitter`

***

## Neovim Keybind
#### Basic Neovim Keymap
- `a = For insert text (edit text)`
- `o = Insert text in new line`
- `x = Deleting the character`
- `dw = Delete a word backwards`
- `y = For copying text`
- `u = Undo`
- `shift + v = Start linewise visual mode`
- `ctrl + r = Redo`
- `d = Cut the line (text)`
- `p = Paste the line (text)`
- `shift + c = Change (replace) entire line`
- `ctrl + a = Select all`
- `gg = Go to the first line`
- `shift + g = Go to the last line`
- `0 = Jump to the the start of the line`
- `$ = Jump to the end of the line`
- `} = Jump to next paragraph`
- `{ = Jump to previous paragraph`
- `:%s/(multiple line text)/(replace text) = Refactoring`
- `sv = Split window vertically`
- `ss = Split window horizontally`
- `sh = Change split window left`
- `sl = Change split window right`
- `sj = Change split window down`
- `sk = Change split window up`
- `te = Open new tab`
- `+ = Increment`
- `- = Decrement`

***

#### Telescope Fuzzy Finder
- `sf = To find file`
- `c = Create new file / folder`
- `tab = To select file / folder`
- `y = Copy file / folder`
- `m = Move file / folder`
- `r = Rename`
- `d = Delete`
- `e = Go to home directory`
- `g = Go to parent directory`
- `w = Go to working directory`

***

#### Lspsaga
- `gr = Refactoring`
- `gd = Finder`
- `ctr + k = Diagnostic Jump`
- `ctrl + j = Diagnostic Jump Next`
- `shift + k = Hover Document`

***

#### Vim Surround
- `ysw" = For surround the word with (double quote)`
- `cs"' = For replacing (double quote) with (single quot)`
- `ds" = For deleting the surround (double quote)`

***

#### Comment
- `gcc = Comment the line`
- `gc(number)j = Comment with specific number of line`

***

#### Nvim Tree File Exporer
- `leader + e = Open file explorer`
- `a = To create a file in file explorer`
- `d = Deleting a file in file explorer`

## Neovim Plugins
Requires [Neovim](https://neovim.io/) (>= 0.8)

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) - A plugin manager for Neovim
- [svrana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) - A truecolor, solarized dark colorscheme
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim) - VSCode-like pictograms
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - nvim-cmp source for neovim's built-in LSP
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - nvim-cmp source for buffer words
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion engine plugin for neovim written in Lua
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - Lua `fork` of vim-web-devicons for neovim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Browser extension for telescope.nvim
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopairs
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Use treesitter to auto close and auto rename html tag
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - A high-performance color highlighter
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) - A snazzy bufferline
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers

***

### Special Thanks: [Takuya Matsuyama](https://www.youtube.com/c/devaslife)

### You can watch the full video here: [Set up Neovim on a new M2 MacBook Air for coding React, TypeScript, Tailwind CSS, etc.](https://www.youtube.com/watch?v=5-aK2_WwrmM&list=PLmMocGWXmbd_MTRMJTTK8lCxmBcjYZvF_&index=5&t=987s)
