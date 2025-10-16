require('os')

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local function updateBG(lightTheme, darkTheme)
  local dmStatus = os.capture("dark-mode status")
  if dmStatus == "off" then
    vim.cmd([[set bg=light]])
    vim.cmd("colorscheme " .. lightTheme)
  else
    vim.cmd([[set bg=dark]])
    vim.cmd("colorscheme " .. darkTheme)
  end
end

-- updateBG(
--   "base16-gruvbox-material-light-medium",
--   "base16-gruvbox-material-dark-medium"
-- )
--

-- updateBG(
--   "base16-gruvbox-material-light-medium",
--   "base24-solarized-dark-higher-contrast"
--   "base24-solarized-dark-patched"
-- )
--

--   Nice dark colorschemes
--   "base24-solarized-dark-higher-contrast"
--   "base24-solarized-dark-patched"

if vim.g.vscode then
else
  updateBG(
    "base16-gruvbox-material-light-soft",
    "onedark"
  )
end

-- updateBG(
--   "base24-gruvbox-light",
--   "base24-gruvbox-dark"
-- )

-- updateBG(
--   "retrobox",
--   "retrobox"
-- )
