---@type ChadrcConfig
local M = {}
M.ui = { theme = 'onedark' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.setup = function()
  -- Health check for lazy plugin
  if pcall(require, "lazy.health") then
    require("lazy.health").check()
  else
    print("Lazy plugin health check failed.")
  end

  -- Health check for luasnip plugin
  if pcall(require, "luasnip.health") then
    require("luasnip.health").check()
  else
    print("Luasnip plugin health check failed.")
  end

  -- Health check for nvim plugin
  if pcall(require, "nvim.health") then
    require("nvim.health").check()
  else
    print("Nvim plugin health check failed.")
  end

  -- Health check for nvim-treesitter plugin
  if pcall(require, "nvim-treesitter.health") then
    require("nvim-treesitter.health").check()
  else
    print("Nvim-treesitter plugin health check failed.")
  end

  -- Health check for provider plugin
  if pcall(require, "provider.health") then
    require("provider.health").check()
  else
    print("Provider plugin health check failed.")
  end

  -- Health check for vim.lsp plugin
  if pcall(require, "vim.lsp.health") then
    require("vim.lsp.health").check()
  else
    print("Vim.lsp plugin health check failed.")
  end

  -- Health check for vim.treesitter plugin
  if pcall(require, "vim.treesitter.health") then
    require("vim.treesitter.health").check()
  else
    print("Vim.treesitter plugin health check failed.")
  end
end


return M

