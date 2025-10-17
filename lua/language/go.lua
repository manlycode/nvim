local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("gopls", {
  capabilities = capabilities,
})

vim.lsp.enable("gopls")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
