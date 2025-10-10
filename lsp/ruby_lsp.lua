print("got loaded....")

return {
  init_options = {
    formatter = "standard",
    linters = { "standard", "butt" }
  },
  mason = false,
  cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
}
