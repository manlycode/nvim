local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("stylelint_lsp", {
  capabilities = capabilities,
  filetypes = { "css", "scss", "less", "postcss" },
  root_dir = require('lspconfig.util').root_pattern('.stylelintrc', 'package.json'),
})

vim.lsp.enable("stylelint_lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
