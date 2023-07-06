-- telescope configuration

local status, telescope = pcall(require, "telescope")
if not status then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = "$ ",
        selection_caret = "> ",
        path_display = { "smart" },
    },
})
