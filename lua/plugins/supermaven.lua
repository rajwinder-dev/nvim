
return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    opts = {
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = {}, -- Ensure no filetype is accidentally blocked
      disable_inline_completion = false,
    },
    config = function(_, opts)
      require("supermaven-nvim").setup(opts)
    end,
  }
}

