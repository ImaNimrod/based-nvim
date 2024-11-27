-- custom key mappings

local opts = { noremap = true, silent = true }

-- set leader key to space
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- move lines of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- keep cursor centered on screen while paging up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- keep cursor centered on screen whlie searching
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- split management
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- move left
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- move down
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- move up
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- move right

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)               -- decrease split horizontal size
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)             -- increase split horizontal size
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)    -- decrease split vertical size
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)   -- increase split vertical size

vim.keymap.set("n", "<leader>sv", "<C-w>v", opts)           -- vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s", opts)           -- horizontal split
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", opts)   -- close split 

-- plugin keymaps

-- nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope man_pages<CR>", opts)
