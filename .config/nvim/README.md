# Neovim Setup - Windows 11

### Requirements:
- PowerShell Terminal [Download and Install](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-ph&gl=ph)
- Git [Download and Install](https://git-scm.com/download/win)
- Nodejs [Download and Install](https://nodejs.org/en/download/)
- Scoop Command-line Installer
  - Install via PowerShell Terminal
    - `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
    - `irm get.scoop.sh | iex`
- GCC Compiler
  - Install gcc via [scoop](https://scoop.sh/): `scoop install gcc`
- Neovim Hyperextensible Vim-based Text Editor
  - Install bucket add extras via [scoop](https://scoop.sh/): `scoop bucket add extras`
  - Install vcredist2022 via [scoop](https://scoop.sh/): `scoop install vcredist2022`
  - Install neovim via [scoop](https://scoop.sh/): `scoop install neovim`

***

### Configuring Neovim
1. Check where your `nvim` config folder is located by typing this command inside `nvim`: `:echo stdpath('config')`
2. Create a file `init.lua` inside `nvim` config folder.
3. Create a two folder name it with `lua` `plugin`
4. Create a folder name `yourUserName` inside `lua` folder, then copy all my files in `lua/igmtink` folder and paste it to your folder.
5. Install `packer.nvim` for plugin manager.
    - Install `packer.nvim` via [powershell](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-ph&gl=ph): `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`
6. Install your prefer language server (this is for lspconfig)
    - Sumneko Lua: `scoop lua-language-server`
    - Typscript: `npm install -g typescript-language-server typescript`
    - TailwindCSS: `npm install -g @tailwindcss/language-server`
    - CSS: `npm i -g vscode-langservers-extracted`
    - Emmet Language Server: `npm install -g emmet-ls`
    - HTML: `npm i -g vscode-langservers-extracted`
    - Json Language Server: `npm i -g vscode-langservers-extracted`
    - Astro: `npm install -g @astrojs/language-server`
7. Open `nvim` text editor, just type `nvim` in your `powershell`
    - Install all plugins in `packer.nvim` by typing this command in `nvim`: `:PackerInstall`
8. After installing all plugins, you can now copy and paste all my `lua` files to your `nvim` config folder.
