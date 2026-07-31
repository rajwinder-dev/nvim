return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")

      opts.defaults = opts.defaults or {}
      opts.defaults.mappings = {
        i = {
          ["<CR>"] = actions.select_default,
        },
        n = {
          ["<CR>"] = actions.select_default,
        },
      }

      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = {
        hidden = true,
      }

      opts.defaults.vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
      }
    end,
  },
}
