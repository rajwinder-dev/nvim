return {
  -- 1. LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {},
      },
    },
  },

  -- 2. Formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "blade-formatter" }, -- Add this for Blade files
      },
    },
  },

  -- 3. Blade Syntax Highlighting
  {
    "jwalton512/vim-blade",
    event = "VeryLazy",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "php", "blade", "html", "javascript", "vue" },
    },
  },
}
