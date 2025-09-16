vim.keymap.set('n', '<leader>ev', ":tabe<CR>:WorkspacesOpen nvim<CR><Esc>:tabe init.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ew', "<Esc>:tabe workspace.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ss', ":ReSource<CR>", { desc = 'Source the current file' })

vim.keymap.set('n', '<leader>nnn', ":NvimTreeToggle<CR>", { desc = 'Source the current file' })
vim.keymap.set('n', '<leader>nnf', ":NvimTreeFindFile<CR>", { desc = 'Source the current file' })
