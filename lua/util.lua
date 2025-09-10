function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function cmap(shortcut, command)
  vim.api.nvim_set_keymap("c", shortcut, command, { noremap = true, silent = false})
end

function tmap(shortcut, command)
  vim.api.nvim_set_keymap("t", shortcut, command, { noremap = true, silent = false})
end

function fileExistsInPWD(name)
  local cwd = vim.loop.cwd()
  local filePath = cwd .. "/".. name
  local f=io.open(filePath,"r")
  if f~=nil then io.close(f) return filePath else return false end
end
