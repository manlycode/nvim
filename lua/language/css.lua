-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("stylelint_lsp", {
  filetypes = { "css", "scss", "less", "postcss" },
  root_dir = require('lspconfig.util').root_pattern('.stylelintrc', 'package.json'),
})

vim.lsp.enable("stylelint_lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
