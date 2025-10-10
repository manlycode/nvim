local capabilities = require('cmp_nvim_lsp').default_capabilities()
return {
  capabilities = capabilities,
  filetypes = { "kotlin", "kt", "kts" },
  init_options = {
    formatter = "ktlint",
    linters = { "ktlint" }
  },
}
