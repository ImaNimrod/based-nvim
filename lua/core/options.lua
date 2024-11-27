-- basic editor configuration

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- disable netrw because we use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- no line wrapping
vim.opt.wrap = false

-- better searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- look better
vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.laststatus = 2
vim.opt.cmdheight = 2
vim.opt.pumheight = 10,

-- disable messages and nvim startup screen
vim.opt.shortmess:append "sIc"
-- hyphenated words recognized by searches
vim.opt.iskeyword:append "-"

-- split defaults
vim.opt.splitbelow = true
vim.opt.splitright = true

-- misc
vim.opt.fileencoding = "utf-8"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.showmode = false
vim.opt.updatetime = 300
vim.opt.errorbells = false
vim.opt.whichwrap = "bs<>[]hl"
