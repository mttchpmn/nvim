-- Set colorscheme
local colorscheme = "dracula"

-- Try set color scheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

-- Warn rather than breaking if color scheme not found
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
