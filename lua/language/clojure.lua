-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
vim.lsp.config("clojure_lsp", {
  cmd = { "clojure-lsp" },
  filetypes = { "clojure", "edn" },
  root_markers = { "project.clj", "deps.edn", "build.boot", "shadow-cljs.edn", ".git", "bb.edn" }
})

vim.lsp.enable("clojure_lsp")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

require("nvim-autopairs").get_rule("'")[1].not_filetypes = { "clojure", "clj", "edn" }
