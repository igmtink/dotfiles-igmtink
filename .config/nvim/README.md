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
    - Prettier: `npm install -g @fsouza/prettierd` - For Formatter
8. Open `nvim` text editor, just type `nvim` in your `powershell`
    - Install all plugins in `packer.nvim` by typing this command in `nvim`: `:PackerInstall`
9. After installing all plugins, you can now copy and paste all my `lua` files to your `nvim` config folder.
10. After copying all my `lua` files, open again your `nvim` then type this command `:TSUpdate` to download all requirements for `Tree-Sitter`

***

## Neovim Keybind

### Basic Neovim Keymap
a - For insert text (edit text)
o - Insert text in new line
x - Deleting the character
yw - For copying text
u / shift + w - For undo the text changes
d - Cut the line (text)
p - Paste the line (text)
ctrl + a - Select all

shift + g - Go to bottom of the line

:%s/(multiple line text)/(replace text) - Refactoring

sv - Split window vertically
ss - Split window horizontally

te - Open new tab

***

### Lspsaga
gr - Refactoring
ctr + k - Diagnostic Jump

***

### Telescope Fuzzy Finder
sf - To find file
N - Create new file / folder
r - Rename
d - Delete

***

### Vim Surround
ysw" - For surround the word with (double quote)
cs"' - For replacing (double quote) with (single quot)
ds" - For deleting the surround (double quote)

***

### Comment
gcc - Comment the line
gc(number)j - Comment with specific number of line

***

### Nvim Tree File Exporer
leader + e - Open file explorer
a - To create a file in file explorer
d - Deleting a file in file explorer

### LSP
gd - To open the file where is located our import file (reactjs)
ctrl + o - Jump back where the current file you editing
ctrl + i - Jump forwad where the file you open using (gd)
]d - Jumping where the error come from
leader + ca - To see code action for fixing the error
leader + rn - To rename the import name everywhere
leader + rf - To rename typescript file everywhere
