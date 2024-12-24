
function import(module,name)
  vim.cmd("luafile ~/.config/nvim/"..module.."/"..name..".lua")
end
