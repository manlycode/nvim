-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("eslint", {
  capabilities = capabilities,
  filetypes = { "javascript", "json" },
})

vim.lsp.enable('eslint')
-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
