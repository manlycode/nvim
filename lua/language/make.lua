-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("autotools_ls",
  {
    capabilities = capabilities,
    -- filetypes = { "make" },
    -- init_options = {
    --  formatter = "",
    --  linters = { "" }
    -- },
  }
)
vim.lsp.enable("autotools_ls")
-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
