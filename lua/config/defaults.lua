vim.opt.shell = "/bin/zsh"
vim.env.PATH = "/Users/manlycode/.asdf/shims:" .. vim.env.PATH

vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.number = true
vim.opt.showcmd = true
-- vim.opt.nojoinspaces = true
vim.opt.ignorecase = true
-- vim.opt.autowrite = true
vim.opt.expandtab = true
vim.opt.hidden = true
-- vim.opt.noswapfile = true
vim.opt.wrap = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.clipboard = vim.opt.clipboard + "unnamedplus"
vim.opt.timeout = true
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 250
vim.opt.signcolumn = "yes"
vim.opt.signcolumn = "yes"
-- Disable the "s" keymapping for surround
-- functionality
vim.keymap.set({ "n", "v", }, "s", "<nop>")
vim.keymap.set({ "n", "v", }, "S", "<nop>")

vim.g.python_host_prog = '/Users/manlycode/.asdf/shims/python'
vim.g.python3_host_prog = '/Users/manlycode/.asdf/shims/python3'

-- vim.opt.wildmode = "longest"
vim.opt.wildmode = "longest:full,list"
