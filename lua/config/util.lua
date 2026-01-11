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
  vim.api.nvim_set_keymap("c", shortcut, command, { noremap = true, silent = false })
end

function tmap(shortcut, command)
  vim.api.nvim_set_keymap("t", shortcut, command, { noremap = true, silent = false })
end

function fileExistsInPWD(name)
  local cwd = vim.loop.cwd()
  local filePath = cwd .. "/" .. name
  local f = io.open(filePath, "r")
  if f ~= nil then
    io.close(f)
    return filePath
  else
    return false
  end
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

vim.api.nvim_create_user_command("VSCode", function()
  vim.cmd("silent !code .")
end, {})

vim.api.nvim_create_user_command("Cursor", function()
  vim.cmd("silent !cursor .")
end, {})

vim.api.nvim_create_user_command("Source", function()
  vim.cmd("source ~/.config/nvim/init.lua")
end, {})

vim.api.nvim_create_user_command("Github", function()
  vim.cmd("!github .")
end, {})

vim.api.nvim_create_user_command("ArgWrap", function()
  require("trevj").format_at_cursor()
end, {})

local function split(s, delimiter)
  local result = {}
  for match in string.gmatch(s, "([^" .. delimiter .. "]+)") do
    table.insert(result, match)
  end
  return result
end

vim.api.nvim_create_user_command("AddLanguage", function(cmd)
  -- local home_path = vim.fn.expand("~")
  local languagesPath = "~/.config/nvim/lua/language"

  local languageName = cmd.args
  local filePath = languagesPath .. "/" .. languageName .. ".lua"


  local template = [[
-- ------------------------------------------------------
-- LSP
-- ------------------------------------------------------
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("%s",
  {
    capabilities = capabilities,
    -- filetypes = { "%s" },
    -- init_options = {
    --  formatter = "",
    --  linters = { "" }
    -- },
  }
)

vim.lsp.enable("%s")

-- ------------------------------------------------------
-- Treesitter
-- ------------------------------------------------------
]]

  local renderedTemplate = string.format(template, languageName, languageName, languageName)

  local lines = {}
  for s in renderedTemplate:gmatch("[^\r\n]+") do
    table.insert(lines, s)
  end

  vim.system({ "touch", filePath })
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
    lines
  )
end, {
  desc = "Adds a plugin spec to Neovim config",
  nargs = 1
})

vim.api.nvim_create_user_command("LazyAddPlugin", function(cmd)
  -- local home_path = vim.fn.expand("~")
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
    "    -- config = function()",
    "    -- end",
    "  }",
    "}"
  }

  vim.system({ "touch", filePath })
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


function PrintCWD()
  local lfs = require("lfs") -- You need to have LuaFileSystem installed

  local current_dir = lfs.currentdir()
  if current_dir then
    print(current_dir)
  else
    print("Error getting current directory.")
  end
end

function RequireDir(directory_path)
  local str = debug.getinfo(2, "S").source:sub(2)
  local script_path = str:match("(.*/)")

  local lfs = require("lfs")
  local full_directory_path = script_path .. "/lua/" .. directory_path

  -- Iterate through the directory
  for filename in lfs.dir(full_directory_path) do
    local full_path = full_directory_path .. "/" .. filename

    -- Check if it's a regular file and ends with .lua
    if lfs.attributes(full_path, "mode") == "file" and filename:match(".lua$") then
      -- Remove the .lua extension and replace / with . for module name
      local module_name = directory_path .. "." .. (filename):gsub("%.lua$", ""):gsub("/", ".")
      require(module_name)
    end
  end
end

local googleChrome = "\"Google Chrome\""
local chromium = "\"Chromium\""
local safari = "\"Safari\""
local preferredBrowser = chromium
local preferredBrowser = chromium

function OpenWithChrome(url)
  local command = "silent !open -a " .. preferredBrowser .. " " .. url
  vim.cmd(command)
end

function OpenWithSafari(url)
  local command = "silent !open " .. url
  vim.cmd(command)
end

function OpenWithChromeDevPre()
  local command = "silent !open -a " .. preferredBrowser .. " --args --auto-open-devtools-for-tabs "
  vim.cmd(command)
end

function OpenWithChromeDev(url)
  local command = "silent !open -a " .. preferredBrowser .. " --args --auto-open-devtools-for-tabs " .. url
  vim.cmd(command)
end
