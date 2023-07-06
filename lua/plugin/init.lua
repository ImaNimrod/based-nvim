local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- colorscheme
    use ({
        "ray-x/aurora",
        config = function()
            vim.cmd.colorscheme("aurora")

            -- transparent background
            vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", ctermbg = "none" })
        end,
    })

    -- file explorer
    use { 
        "nvim-tree/nvim-tree.lua",
        config = function() 
            require("plugin.config.nvimtree")
        end,
        requires = { "nvim-tree/nvim-web-devicons" }, -- for icons
    }

    -- status line
    use ({
        "nvim-lualine/lualine.nvim",
        config = function() 
            require("plugin.config.lualine")
        end, 
        requires = { "nvim-tree/nvim-web-devicons" }, -- for icons
    })

    -- telescope file-finder
    use ({
        "nvim-telescope/telescope.nvim",
        tag = '0.1.2',
        config = function()
            require("plugin.config.telescope")
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- beter syntax-highlighting w/ treesitter
    use ({
        "nvim-treesitter/nvim-treesitter", 
        config = function()
            require("plugin.config.treesitter")
        end,
        run = ":TSUpdate",
    })

    -- persistant terminals in nvim
    use ({
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("plugin.config.toggleterm")
        end,
    })

    if packer_bootstrap then
        require("packer").sync()
    end
end)
