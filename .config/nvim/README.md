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
```

***

### init.lua - For initializing

Now edit the `init.lua` using our `Neovim`, type this command line in `Powershell`: 

```powershell
cd .config/nvim
nvim init.lua
```

Now initialize our `lua` file by adding this command:

```lua
require "igmtink.core.options"
require "igmtink.core.keymaps"
require "igmtink.core.colorscheme"
```

Now save the changes and quit by typing this command inside `Neovim`:

```nvim
:wq
```

Note: If this procedure of initializing `init.lua` is not working, type this command line:

```nvim
:echo stdpath('config')
```

So you will see where is your `nvim` config path

***

### options.lua - For basic options and settings

Just copy and paste my code in `options.lua`

***

### plugins-setup.lua - For plugins

Just copy and paste my code in `plugins-setup.lua`

And edit again `init.lua` it will should be like this:

```lua
require "igmtink.plugins-setup" -- It should be at the top
require "igmtink.core.options"
require "igmtink.core.keymaps"
require "igmtink.core.colorscheme"
```

***

### colorscheme.lua - For colors and theming

Just copy and paste my code in `colorscheme.lua`

***

### keymaps.lua - For keybindings

Just copy and paste my code in `keymaps.lua`

***

## Plugins:
### Make sure you didn't modify our `plugins-setup.lua`
- [Tmux & Split Window Navigation](https://github.com/christoomey/vim-tmux-navigator)
  - Usage is on the link
  
***

- [Vim Maximizer](https://github.com/szw/vim-maximizer)
  - Usage is on our `keymaps.lua`
  
***

- [Vim Surrounding](https://github.com/tpope/vim-surround)
  - Usage is on the link
  
***

- [Replace with Register](https://github.com/vim-scripts/ReplaceWithRegister)
  - Usage is on the link
  
***

- [Comment](https://github.com/numToStr/Comment.nvim)
  - Create a `comment.lua` file inside folder of `plugins` then copy and paste my `comment.lua`
  - Initialize it on `init.lua` `require "igmtink.plugins.comment"`
  - Usage is on the link
  
***

- [Nvim Tree File Exporer](https://github.com/nvim-tree/nvim-tree.lua)
  - Create a `nvim-tree.lua` file inside folder of `plugins` then copy and paste my `nvim-tree.lua`
  - Initialize it on `init.lua` `require "igmtink.plugins.nvim-tree"`
  - Usage is on our `keymaps.lua`
  
***

- [Nvim Icons](https://github.com/nvim-tree/nvim-web-devicons)

***

- [Lulaline](https://github.com/nvim-lualine/lualine.nvim)
  - Create a `lualine.lua` file inside folder of `plugins` then copy and paste my `lualine.lua`
  - Initialize it on `init.lua` `require "igmtink.plugins.lualine"`
 
***
- [Telescope Fuzzy Finder](https://github.com/nvim-telescope/telescope.nvim#getting-started)
  - Usage is on our `keymaps.lua`
  
***
- [Nvim CMP](https://github.com/hrsh7th/nvim-cmp)

***

### Special Thanks: [Josean Martinez](https://www.youtube.com/watch?v=vdn_pKJUda8&list=PLmMocGWXmbd_MTRMJTTK8lCxmBcjYZvF_&index=2&t=449s)

### Video Tutorial: [How I Setup Neovim On My Mac To Make It Amazing - Complete Guide](https://www.youtube.com/watch?v=vdn_pKJUda8&list=PLmMocGWXmbd_MTRMJTTK8lCxmBcjYZvF_&index=2&t=449s)
