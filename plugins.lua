local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "prettierd",
        "templ",
        "htmx-lsp",
        "html-lsp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    lazy = false,
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "go",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end
  },
  require "custom.plugins.dadbod-ui",
  require "custom.plugins.trouble",
  require "custom.plugins.transparent",
  require "custom.plugins.gitintegration",
  require "custom.plugins.tmpl",
}
return plugins
