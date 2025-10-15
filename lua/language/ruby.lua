-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("ruby_lsp", {
  init_options = {
    formatter = "standard",
    linters = { "standard", "butt" }
  },
  mason = false,
  cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
})

vim.lsp.enable("ruby_lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
