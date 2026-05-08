return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      -- 1. For "Find Files" (searching filenames)
      opts.pickers = opts.pickers or {}
      opts.pickers.find_files = {
        hidden = true, -- Shows dotfiles (.env, .gitignore, etc.)
      }

      -- 2. For "Live Grep" (searching text inside files)
      opts.defaults = opts.defaults or {}
      opts.defaults.vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden", -- This allows ripgrep to see hidden files
      }

      -- Optional: If you want to see files inside .gitignore (like node_modules)
      -- add "--no-ignore" to the vimgrep_arguments list above.
    end,
  },
}
