-- nvim-tree configuration

local status, tree = pcall(require, "nvim-tree")
if not status then
    return
end

tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
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
