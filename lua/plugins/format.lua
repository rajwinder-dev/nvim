return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },

      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        php = { "pint", "php_cs_fixer" },
        sql = { "sql_formatter" },
        python = { "ruff_format" },
      },

      formatters = {
        sql_formatter = {
          command = "sql-formatter",
          args = {
            "--language",
            "postgresql",
          },
          stdin = true,
        },
      },
    },
  },
}
