vim.keymap.set('n', '<leader>ev', ":tabe<CR>:WorkspacesOpen nvim<CR><Esc>:tabe init.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ew', "<Esc>:tabe workspace.lua<CR>", { desc = 'Edit nvim files' })
