local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

vim.keymap.set('n', '<leader>fn', mark.add_file)
vim.keymap.set('n', '<leader>fo', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>f1', function () ui.nav_file(1) end)
vim.keymap.set('n', '<leader>f2', function () ui.nav_file(2) end)
vim.keymap.set('n', '<leader>f3', function () ui.nav_file(3) end)
vim.keymap.set('n', '<leader>f4', function () ui.nav_file(4) end)

vim.keymap.set('n', '<leader>te', function () term.gotoTerminal(1) end)
