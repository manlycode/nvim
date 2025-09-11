return {
  {
    'tinted-theming/tinted-vim',
    config = function()
      vim.g.tinted_colorspace = 256
      vim.cmd("colorscheme base16-gruvbox-material-light-medium")
    end
  }
}
