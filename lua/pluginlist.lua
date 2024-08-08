return {

    { -- comments
        'numToStr/Comment.nvim',
        opts = {},
        config = function()
            require("Comment").setup()
        end
    },

    { -- colorscheme
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        -- config = function()
        --     vim.cmd("colorscheme catppuccin-mocha")
        -- end
    },

    {
        'kaicataldo/material.vim',
        name = 'material',
        priority = 1000,
        config = function ()
            -- vim.cmd("colorscheme material")
        end
    },

    {
        'ayu-theme/ayu-vim',
        name = 'ayu-vim',
        priority = 1000,
        config = function ()
            vim.cmd("colorscheme ayu")
        end
    },

    {
        "bluz71/vim-moonfly-colors",
        lazy = false,
        name = 'moonfly',
        priority = 1000,
        config = function ()
            -- vim.cmd("colorscheme ayu")
        end
    },

    { -- lualine
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end,
    },

    -- LSP
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- completion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',

            'hrsh7th/cmp-nvim-lsp',
        },
    },

    -- neodev
    'folke/neodev.nvim',

    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },

    {'xiyaowong/telescope-emoji.nvim'},


    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    'ap/vim-css-color',

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "ObserverOfTime/nvimcord",
    },

    -- markdown
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false,      -- Recommended
        -- ft = "markdown" -- If you decide to lazy-load anyway

        dependencies = {
            -- You will not need this if you installed the
            -- parsers manually
            -- Or if the parsers are in your $RUNTIMEPATH
            "nvim-treesitter/nvim-treesitter",

            "nvim-tree/nvim-web-devicons"
        }
    }

}
