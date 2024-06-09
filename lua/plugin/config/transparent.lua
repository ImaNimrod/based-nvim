-- transparent.nvim configuration
--
local status, transparent = pcall(require, "transparent")
if not status then
    return
end

transparent.setup({
    extra_groups = {
        "NormalFloat",
        "NvimTreeNormal"
    },
})

vim.g.transparent_enabled = true
