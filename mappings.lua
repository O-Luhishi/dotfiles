local M = {}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    },
    ["<leader>db"] = { "<cmd>DBUI<cr>", "Open DBUI" },
    ["<leader>dt"] = { "<cmd>DBUIToggle<cr>", "Toggle DBUI" },
  }
}

return M
