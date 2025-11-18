-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("cmake",
  {
    capabilities = capabilities,
    -- filetypes = { "cpp" },
    -- init_options = {
    --  formatter = "",
    --  linters = { "" }
    -- },
  }
)
vim.lsp.enable("cmake")
-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
