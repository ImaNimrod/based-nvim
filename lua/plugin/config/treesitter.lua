-- treesitter configuration

local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

configs.setup({
    ensure_installed = { "c", "java", "typescript", "lua", "vim", "vimdoc", "query", },
    ignore_install = { "sql", "ignore", },
    sync_install = false,
    autopairs = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = { "python", "css" }
    },
})
