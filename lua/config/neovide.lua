if vim.g.neovide then
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-full"
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-normal"
  -- vim.o.guifont = "Hack Nerd Font Mono:h16:#e-subpixelantialias:#h-slight"
  -- vim.o.guifont = "Hack Nerd Font Mono:h14:#e-subpixelantialias:#h-none"
  vim.o.guifont = "ZedMono Nerd Font:h16:#e-subpixelantialias:#h-none"
  -- vim.o.guifont = "Zed Mono:h16:#e-subpixelantialias:#h-none"
  -- vim.o.guifont = "Hack Nerd Font:h16:#e-subpixelantialias:#h-none"
  vim.opt.linespace = 6
  -- vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  -- vim.g.neovide_padding_right = 15
  -- vim.g.neovide_padding_left = 15
  vim.g.neovide_refresh_rate = 120

  nmap("<D-t>", "<cmd>tabe<cr>")
  nmap("<D-v>", "\"+p")
  imap("<D-v>", "<Esc>\"+pA")
  cmap("<D-v>", "<C-r>+")
  imap("<D-s>", "<Esc>:w<CR>A")
  nmap("<D-s>", "<Esc>:w<CR>")
  -- imap("<D-w>", "<Esc>:bd<CR>")
  -- nmap("<D-w>", "<Esc>:bd<CR>")
  imap("<D-w>", "<Esc>:tabclose<CR>")
  nmap("<D-w>", "<Esc>:tabclose<CR>")

  nmap("<D-{>", ":tabp<CR>")
  nmap("<D-}>", ":tabn<CR>")
  imap("<D-{>", "<Esc>:tabp<CR>")
  imap("<D-}>", "<Esc>:tabn<CR>")
  -- nmap("<D-F>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
  imap("<D-Left>", "<Esc>^i")
  imap("<D-Right>", "<Esc>$A")
  nmap("<D-Left>", "<Esc>^")
  nmap("<D-Right>", "<Esc>$")
  nmap("<D-r>", "<cmd>CompilerOpen<cr>")
end
