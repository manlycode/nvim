local modules = {
  "config.defaults",
  "config.util",
  "config.lazy",
  "config.neovide",
  "config.workspace",
  "config.keymap",
  "config.colorscheme",
  "config.autocmd",
}

for _, module in ipairs(modules) do
  package.loaded[module] = nil
  require(module)
end

-- require("config.defaults")
-- require("config.util")
-- require("config.lazy")
-- require("config.neovide")
-- require("config.workspace")
-- require("config.keymap")
-- require("config.colorscheme")
