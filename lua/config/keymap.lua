vim.keymap.set('n', '<leader>ev', ":tabe<CR>:WorkspacesOpen nvim<CR><Esc>:tabe init.lua<CR>",
  { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ew', "<Esc>:tabe workspace.lua<CR>", { desc = 'Edit nvim files' })
vim.keymap.set('n', '<leader>ss', ":ReSource<CR>", { desc = 'Source the current file' })

vim.keymap.set('n', '<leader>nnn', ":NvimTreeToggle<CR>", { desc = 'Source the current file' })
vim.keymap.set('n', '<leader>nnf', ":NvimTreeFindFile<CR>", { desc = 'Source the current file' })
-- vim.keymap.set('t', '<esc><esc>', "hello there", { desc = 'Source the current file', silent = true, noremap = true })
vim.keymap.set('t', '<esc><esc>', "<C-\\><C-n>", { desc = 'Source the current file', silent = true, noremap = true })
vim.keymap.set('t', '<D-v>', '<C-\\><C-n>"+pi', { desc = 'Source the current file', silent = true, noremap = true })


vim.keymap.set('n', '<leader>sf', ":TREPLSendFile<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>sl', ":TREPLSendLine<cr>", { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('v', '<leader>ss', ":TREPLSendSelection<cr>",
  { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>sp', "vap:TREPLSendSelection<cr>",
  { desc = 'Send the current file', silent = true, noremap = true })
vim.keymap.set('n', '<leader>se', ":T exit<cr>", { desc = 'Send the current file', silent = true, noremap = true })

vim.keymap.set('n', '<leader>se', ":T exit<cr>", { desc = 'Send the current file', silent = true, noremap = true })

local modes = { "i", "c" }
for _, mode in ipairs(modes) do
  vim.keymap.set(mode, "<C-a>", "<Home>")
  vim.keymap.set(mode, "<C-e>", "<End>")
  vim.keymap.set(mode, "<C-f>", "<Right>")
  vim.keymap.set(mode, "<C-b>", "<Left>")
end


vim.keymap.set('n', "<M-space>", function() vim.diagnostic.open_float() end)

vim.keymap.set('n', '<D-,>', function()
  local next = vim.diagnostic.get_next()
  vim.diagnostic.jump({ diagnostic = next })
  -- vim.diagnostic.goto_next()
  vim.diagnostic.open_float()
end, { desc = "Go to previous diagnostic" })

vim.keymap.set('n', '<D-<>', function()
  vim.diagnostic.jump({ diagnostic = vim.diagnostic.get_prev() })
  vim.diagnostic.open_float()
end, { desc = "Go to next diagnostic" })


