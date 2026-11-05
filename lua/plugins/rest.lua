return {
  {
    "rest-nvim/rest.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
    },
    ft = "http",

    init = function()
      vim.g.rest_nvim = {
        response = {
          hooks = {
            format = true,
          },
        },
      }
    end,

    config = function()
      -- rest.nvim formats response bodies with `gq`. Use jq directly for
      -- JSON response buffers so formatting works even before an LSP attaches.
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "json",
        callback = function(ev)
          vim.bo[ev.buf].formatexpr = ""
          vim.bo[ev.buf].formatprg = "jq"
        end,
      })

      vim.keymap.set("n", "<leader>rs", "<cmd>Rest run<cr>", {
        desc = "Run HTTP request",
      })

      vim.keymap.set("n", "<leader>rl", "<cmd>Rest run last<cr>", {
        desc = "Run last HTTP request",
      })
    end,
  },
}
