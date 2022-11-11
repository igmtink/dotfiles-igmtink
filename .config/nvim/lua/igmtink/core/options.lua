local opt = vim.opt -- Conciseness

opt.number = true -- Line numbers

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false -- Line wrapping

-- Search settings (/Test)
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true -- Cursor line

-- Appearance
opt.termguicolors = true -- Color scheme work properly
opt.background = "dark"
opt.signcolumn = "yes" -- Cursor bar (It will activate if the cursorline is true)

opt.backspace = "indent,eol,start" -- Backspace work properly

opt.clipboard:append("unnamedplus") -- Clipboard (Force neovim to use the system clipboard when you copy anything with the yank operator)

-- Split windows
opt.splitright = true
opt.splitbelow = true
