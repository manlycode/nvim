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

vim.cmd([[
function! TabbyTabline() abort
    return luaeval("require'tabby'.update()")
endfunction
function! TabbyRenderTabline() abort
    return luaeval("require'tabby.tabline.render()")
endfunction
]])

vim.api.nvim_create_user_command("ReSource", function()
  vim.cmd("source %")
end, {})

vim.api.nvim_create_user_command("Github", function()
  vim.cmd("!github .")
end, {})

local function split(s, delimiter)
    local result = {}
    for match in string.gmatch(s, "([^"..delimiter.."]+)") do
        table.insert(result, match)
    end
    return result
end

vim.api.nvim_create_user_command("LazyAddPlugin", function(cmd)
  -- local home_path = vim.fn.expand("~")
  local pluginsPath = "~/.config/nvim/lua/plugins"
  local pluginsPath = "~/.config/nvim/lua/plugins"

  local githubPrefix = "https://github.com/"
  local pluginAuthorName = string.gsub(cmd.args, githubPrefix, "")
  local pluginName = split(pluginAuthorName, "//")[2]
  local filePath = pluginsPath .. "/" .. string.gsub(pluginName, ".nvim", "") .. ".lua"


  local template = {
    "return {",
    "  {",
    "    '" .. pluginAuthorName .. "',",
    "    -- dependencies = {},",
    "    -- opts = {},",
    "  }",
    "}"
  }

  vim.system({"touch", filePath})
  vim.cmd {
    cmd = "vs",
    args = {
      filePath
    }
  }

  local buffer_handle = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_lines(
    buffer_handle, 
    0, 
    0, 
    false, 
    template 
  )
end, {
  desc = "Adds a plugin spec to Neovim config",
  nargs = 1
})

