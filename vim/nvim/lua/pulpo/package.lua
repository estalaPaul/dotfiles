local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
        config = function()
            local lga_actions = require("telescope-live-grep-args.actions")

            require('telescope').setup {
                defaults = {
                    mappings = {
                        n = {
                            ['<c-d>'] = require('telescope.actions').delete_buffer
                        },
                        i = {
                            ['<c-d>'] = require('telescope.actions').delete_buffer
                        }
                    }
                },
                extensions = {
                    live_grep_args = {
                        auto_quoting = true,
                        mappings = {
                            i = {
                                ["<C-k>"] = lga_actions.quote_prompt(),
                                ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                            }
                        }
                    }
                }
            }
        end,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-live-grep-args.nvim'}
        }
    },
    {
        "klen/nvim-config-local",
        config = function()
            require('config-local').setup {
                -- Default configuration (optional)
                config_files = { ".vimrc.lua", ".vimrc" },  -- Config file patterns to load (lua supported)
                hashfile = vim.fn.stdpath("data") .. "/config-local", -- Where the plugin keeps files data
                autocommands_create = true,                 -- Create autocommands (VimEnter, DirectoryChanged)
                commands_create = true,                     -- Create commands (ConfigSource, ConfigEdit, ConfigTrust, ConfigIgnore)
                silent = false,                             -- Disable plugin messages (Config loaded/ignored)
                lookup_parents = false,                     -- Lookup config files in parent directories
            }
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
    {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = function() require("nvim-highlight-colors").setup {} end
    },
    {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    },
    {
        "folke/trouble.nvim",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
        }
    },
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
    'nvim-treesitter/nvim-treesitter-context',
    { 'echasnovski/mini.pairs', version = '*', config = function() require('mini.pairs').setup() end },
    'nvim-tree/nvim-tree.lua',
    'tpope/vim-fugitive',
    'vim-test/vim-test',
    'airblade/vim-gitgutter',
    'Exafunction/codeium.vim',
})

