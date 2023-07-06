-- custom key mappings

-- set leader key to space
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- move lines of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- clear text highlighting
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- keep cursor centered on screen while paging up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor centered on screen whlie searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- split management
vim.keymap.set("n", "<C-h>", "<C-w>h") -- move left
vim.keymap.set("n", "<C-j>", "<C-w>j") -- move down
vim.keymap.set("n", "<C-k>", "<C-w>k") -- move up
vim.keymap.set("n", "<C-l>", "<C-w>l") -- move right

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close split 

-- plugin keymaps

-- nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
