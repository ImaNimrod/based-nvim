-- basic editor configuration
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.guicursor = ""
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.laststatus = 2
vim.opt.cmdheight = 1
vim.opt.shortmess:append "sIc"
vim.opt.hidden = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.updatetime= 100
vim.opt.backspace = "indent,eol,start"
vim.opt.errorbells = false
vim.opt.modifiable = true
vim.opt.encoding = "utf-8"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- plugins
vim.pack.add({
    -- search in or for files
    { src = "https://github.com/nvim-lua/plenary.nvim.git" },
    { src = "https://github.com/nvim-telescope/telescope.nvim.git" },
    -- nice icons
    { src = "https://github.com/nvim-tree/nvim-web-devicons.git" },
    -- file tree
    { src = "https://github.com/nvim-tree/nvim-tree.lua.git" },
    -- status line
    { src = "https://github.com/nvim-lualine/lualine.nvim.git" },
    -- terminal
    { src = "https://github.com/akinsho/toggleterm.nvim" },
    -- multiple cursors emacs meme
    { src = "https://github.com/jake-stewart/multicursor.nvim" },
    -- colorscheme
    { src = "https://github.com/ray-x/aurora.git" },
})

vim.g.aurora_bold = 1
vim.g.aurora_italic = 1
vim.g.aurora_transparent = 1

vim.cmd("colorscheme aurora")

require("lualine").setup()

local multicursor = require("multicursor-nvim")
multicursor.setup()

require("nvim-tree").setup({
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
        custom = { "^.git$" },
    },
    git = {
        enable = false,
        ignore = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
})

require("telescope").setup({
    defaults = {
        prompt_prefix = "$ ",
        selection_caret = "> ",
        path_display = { "smart" },
    },
})

require("toggleterm").setup({
    open_mapping = [[<c-\>]],
})

-- keybinds
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- move lines of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- split management
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")

-- yank to system clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y<CR>')
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d<CR>')

-- clear text highlighting
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- multicursor
vim.keymap.set({"n", "x"}, "<up>", function() multicursor.lineAddCursor(-1) end)
vim.keymap.set({"n", "x"}, "<down>", function() multicursor.lineAddCursor(1) end)
vim.keymap.set({"n", "x"}, "<leader><up>", function() multicursor.matchAddCursor(-1) end)
vim.keymap.set({"n", "x"}, "<leader><down>", function() multicursor.matchAddCursor(1) end)

multicursor.addKeymapLayer(function(layerSet)
    layerSet({"n", "x"}, "<left>", multicursor.prevCursor)
    layerSet({"n", "x"}, "<right>", multicursor.nextCursor)

    layerSet({"n", "x"}, "<leader>x", multicursor.deleteCursor)

    layerSet("n", "<esc>", function()
        if not multicursor.cursorsEnabled() then
            multicursor.enableCursors()
        else
            multicursor.clearCursors()
        end
    end)
end)

-- nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
