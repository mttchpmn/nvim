local M = {}

M.safe_require = function (module_name)
  local status_ok, module = pcall(require, module_name)

  if not status_ok then
    return
  end

  return module
end

return M
