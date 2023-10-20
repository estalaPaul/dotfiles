if io.open(vim.fn.getcwd() .. '/docker-compose.yml', 'r') ~= nil
    then
        vim.g['test#php#phpunit#executable'] = './vendor/bin/sail test'
        vim.g['test#php#phpunit#options'] = '--no-coverage'
    else
        vim.g['test#php#phpunit#executable'] = './vendor/bin/phpunit'
        vim.g['test#php#phpunit#options'] = '--no-coverage'
    end

vim.keymap.set('n', '<leader>t', vim.cmd.TestNearest)
vim.keymap.set('n', '<leader>T', vim.cmd.TestFile)
