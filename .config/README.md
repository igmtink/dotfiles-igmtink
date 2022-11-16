# Ubuntu 22.04.1
### Requirements
Git:
```fish
sudo apt install git
```

Nodejs: 
```fish
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

GCC Complier: 
```fish
sudo apt install build-essential
```

Tree-sitter-CLI:
```fish
sudo npm install -g tree-sitter-cli
```

Fish Shell:
```fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

chsh -s $(which fish)
```

TMUX:
```fish
sudo apt install tmux
```

Neovim:
```fish
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

# Windows 11
1. Install [PowerShell Terminal](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=en-ph&gl=ph) = Shell
2. Install [Git](https://git-scm.com/download/win)
3. Install [Nodejs](https://nodejs.org/en/download/) = Package Manager
4. Install [Scoop](https://scoop.sh/) = Command-line Installer
5. Install [GCC](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#gcc) = Compiler
6. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) = Hyperextensible Vim-based Text Editor
