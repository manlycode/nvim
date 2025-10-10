return {
  {
    'Zeioth/compiler.nvim',
    -- dependencies = {},
    -- opts = {},
    -- config = function()
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {}, -- end
  }
}
