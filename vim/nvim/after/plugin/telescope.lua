local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.git_files, {})
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
