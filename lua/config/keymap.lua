vim.keymap.set('n', '<leader>ev', ":tabe<CR>:WorkspacesOpen nvim<CR><Esc>:tabe init.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ew', "<Esc>:tabe workspace.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ss', ":ReSource<CR>", { desc = 'Source the current file' })

vim.keymap.set('n', '<leader>nnn', ":NvimTreeToggle<CR>", { desc = 'Source the current file' })
vim.keymap.set('n', '<leader>nnf', ":NvimTreeFindFile<CR>", { desc = 'Source the current file' })
-- vim.keymap.set('t', '<esc><esc>', "hello there", { desc = 'Source the current file', silent = true, noremap = true })
vim.keymap.set('t', '<esc><esc>', "<C-\\><C-n>", { desc = 'Source the current file', silent = true, noremap = true })


vim.keymap.set('n', '<leader>sf', ":TREPLSendFile<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>sl', ":TREPLSendLine<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>ss', ":TREPLSendSelection<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>sp', "vap:TREPLSendSelection<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>se', ":T exit<cr>", { desc = 'Send the current file', silent = true, noremap = true })

vim.keymap.set('n', '<leader>se', ":T exit<cr>", { desc = 'Send the current file', silent = true, noremap = true })

vim.keymap.set('n', "<M-space>", function() vim.diagnostic.open_float()  end)

vim.keymap.set('n', '<D-,>', function()
  vim.diagnostic.goto_next()
  vim.diagnostic.open_float()
end, { desc = "Go to previous diagnostic" })

vim.keymap.set('n', '<D-<>', function()
  vim.diagnostic.goto_prev()
  vim.diagnostic.open_float()
end, { desc = "Go to next diagnostic" })
