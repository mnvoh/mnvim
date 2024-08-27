return {
    -- Lazy can manage itself, no need for a separate entry

    { "psf/black" },

    { "nvim-tree/nvim-web-devicons" },
    { "echasnovski/mini.nvim" },
    -- { "romgrk/barbar.nvim", dependencies = "nvim-web-devicons" },

    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Apps',
                            group = 'DiagnosticHint',
                            action = 'Telescope app',
                            key = 'a',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope dotfiles',
                            key = 'd',
                        },
                    },
                },
            }
        end,
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },

    { "feline-nvim/feline.nvim" },

    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                signs = {
                    add          = { text = '▐' },
                    change       = { text = '▐' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '▐' },
                },
            })
        end
    },

    { "lukas-reineke/indent-blankline.nvim" },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },


    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },

    { "mbbill/undotree" },

    { "tpope/vim-fugitive" },

    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        build = "make",
        opts = {
            -- add any opts here
        },
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below is optional, make sure to setup it properly if you have lazy=true
            {
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    },

    -- Color Schemes

    { "folke/tokyonight.nvim" },
    { "realbucksavage/riderdark.vim" },
}
