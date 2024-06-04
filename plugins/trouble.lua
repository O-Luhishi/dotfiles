return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>xx",

      "<cmd>Trouble diagnostics<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {

      "<leader>xX",
      "<cmd>Trouble document_diagnostics<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp_references<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist<cr>",
      desc = "Location List (Trouble)",
    },

    {
      "<leader>xQ",
      "<cmd>Trouble quickfix<cr>",

      desc = "Quickfix List (Trouble)",
    },
  },
  config = function()
    require("trouble").setup {
      -- your configuration here
    }
  end
}
