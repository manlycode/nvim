-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("basedpyright", {
  basedpyright = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "openFilesOnly",
      useLibraryCodeForTypes = true
    }
  }
})
vim.lsp.enable('basedpyright')

vim.lsp.config('pylsp', {
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { 'W391' },
          maxLineLength = 130
        }
      }
    }
  }
})
vim.lsp.enable('pylsp')

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
