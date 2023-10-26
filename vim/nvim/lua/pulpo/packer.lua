-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        config = function()
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
                }
            }
        end,
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
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
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
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
    }

    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    use {
        "ayu-theme/ayu-vim",
        config = function()
            vim.cmd('colorscheme ayu')
        end
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('tpope/vim-fugitive')
    use('vim-test/vim-test')
    use('airblade/vim-gitgutter')
end)

