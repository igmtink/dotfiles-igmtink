vim.cmd('autocmd!')

vim.scriptendcoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Line Number
vim.wo.number = true

-- No Wrap Lines
vim.opt.wrap = false

-- To work properly backspace
vim.opt.backspace = 'start,eol,indent'

vim.opt.title = true
vim.opt.ignorecase = true

-- Status Line Height
vim.laststatus = 2

-- Hightlight Search
vim.opt.hlsearch = true

-- Finding Files - Search down into subfolders
vim.opt.path:append { '**' }

vim.opt.wildignore:append { '*/node_modules/*' }

-- Tab & Indentation
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true
vim.opt.si = true

vim.opt.backup = false
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.swapfile = false

vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.inccommand = 'split'

-- To activate clipboard system
vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
