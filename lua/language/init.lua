function requireDir(directory_path)
  local str = debug.getinfo(2, "S").source:sub(2)
  local script_path = str:match("(.*/)")
  print("lua/language/init.lua: " .. script_path)

  -- local lfs = require("lfs")
  -- local full_directory_path = script_path .. "/lua/" .. directory_path
  --
  -- -- Iterate through the directory
  -- for filename in lfs.dir(full_directory_path) do
  --   local full_path = full_directory_path .. "/" .. filename
  --
  --   -- Check if it's a regular file and ends with .lua
  --   if lfs.attributes(full_path, "mode") == "file" and filename:match(".lua$") then
  --     -- Remove the .lua extension and replace / with . for module name
  --     local module_name = directory_path .. "." .. (filename):gsub("%.lua$", ""):gsub("/", ".")
  --     require(module_name)
  --   end
  -- end
end
