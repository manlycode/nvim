print("loaded stylelint_lsp...")
return {
  filetypes = { "css", "scss", "less", "postcss" },
  root_dir = require('lspconfig.util').root_pattern('.stylelintrc', 'package.json'),
}
