local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("elixir_ls", {
  capabilities = capabilities,
  cmd = { vim.fn.expand("elixir_ls") },
})

vim.lsp.enable("elixir_ls")
-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
