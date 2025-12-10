-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
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

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
