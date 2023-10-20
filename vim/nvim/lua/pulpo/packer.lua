-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
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
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {'neoclide/coc.nvim', branch = 'release'}
    use('vim-test/vim-test')
    use('mattn/emmet-vim')
    use('airblade/vim-gitgutter')
    use({
        'dracula/vim',
        rtp = 'vim',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    })
end)

