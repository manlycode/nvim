local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("clojure-lsp", {
  capabilities = capabilities,
  cmd = { vim.fn.expand("/opt/homebrew/bin/clojure-lsp") },
  filetypes = { "clojure", "clj" },
  init_options = {
    formatter = "cljfmt",
  },
})

vim.lsp.enable("clojure-lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
