-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("kotlin_lsp",
  {
    capabilities = capabilities,
    filetypes = { "kotlin", "kt", "kts" },
    init_options = {
      formatter = "ktlint",
      linters = { "ktlint" }
    },
  }
)

vim.lsp.enable("kotlin_lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
