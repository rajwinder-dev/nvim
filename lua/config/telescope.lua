return {
  defaults = {
    file_ignore_patterns = {},

    mappings = {
      i = {
        ["<CR>"] = function(prompt_bufnr)
          local selection = require("telescope.actions.state").get_selected_entry()
          require("telescope.actions").close(prompt_bufnr)

          -- Replace Oil buffer in the same window
          vim.cmd("edit " .. vim.fn.fnameescape(selection.path))
        end,
      },
      n = {
        ["<CR>"] = function(prompt_bufnr)
          local selection = require("telescope.actions.state").get_selected_entry()
          require("telescope.actions").close(prompt_bufnr)

          vim.cmd("edit " .. vim.fn.fnameescape(selection.path))
        end,
      },
    },
  },

  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true,
    },
  },
}
