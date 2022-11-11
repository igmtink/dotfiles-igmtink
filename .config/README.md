# Neovim Setup

Create a folder to setup our `Neovim` config, by typing this command line in our `Powershell` one by one

The command line that our using:
- `mkdir` - For creating a new folder
- `cd` - For changing directory
- `touch` - For creating a file

```powershell
mkdir ./config/nvim
cd ./config/nvim

mkdir lua
touch init.lua
cd lua
mkdir (whatever you want name)
cd (whatever you want name that you created folder)

mkdir plugins
touch plugins-setup.lua

mkdir core
cd core
touch colorscheme.lua
touch keymaps.lua
touch options.lua

cd ../../..
nvim init.lua
```

Files
- init.lua - For initializing
- plugins-setup.lua - For plugins
- colorscheme.lua - For colors and theming
- keymaps.lua - For keybindings
- options.lua - For basic options and settings
