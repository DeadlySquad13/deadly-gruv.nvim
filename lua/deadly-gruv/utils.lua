--- 
---@param path (string) Path to modules root (without leading dot).
---@param modules (string[]) List like table of modules.
---@return (table<string, table>) loaded_modules Table of loaded modules.
local function load_modules(path, modules)
  local loaded_modules = {}

  for module_name, module in ipairs(modules) do
    loaded_modules[module_name] = require(path .. "." .. module)
  end

  return loaded_modules
end

--- Convert map-like table to list-like table.
---@param obj (table) Map-like table.
---@return (table) List-like table.
local function to_list(obj)
  local list = {}

  for _, value in pairs(obj) do
    table.insert(list, value)
  end

  return list
end

return {
  load_modules = load_modules,
  to_list = to_list,
}
