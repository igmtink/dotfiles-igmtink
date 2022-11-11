Create a folder to setup our `Neovim` config, by typing this command line in our `Powershell` one by one

The command line that our using:
- `mkdir` - for creating a new folder
- `cd` - for changing directory
- `touch` - for creating a file

```powershell
mkdir ./config/nvim
cd ./config/nvim

mkdir lua
touch init.lua
cd lua
mkdir (whatever you want name)
cd (whatever you want name that you created folder)

mkdir plugins
touch plugins-setup.lua // This is for plugins

mkdir core
cd core
touch colorscheme.lua // This is for color theming
touch keymaps.lua // This for keymap, keybindings
```
