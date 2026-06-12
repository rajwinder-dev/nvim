return {
  "Exafunction/windsurf.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("codeium").setup({
      -- This fixes your "module 'cmp' not found" error permanently
      enable_cmp_source = false,

      -- This turns on your preferred inline ghost text style
      virtual_text = {
        enabled = false,
        key_bindings = {
          accept = "<Tab>", -- Press Tab to accept the inline suggestion
          clear = "<C-x>", -- Press Ctrl + x to dismiss it
          next = "<M-]>", -- Press Alt + ] to see the next alternative
          prev = "<M-[>", -- Press Alt + [ to see the previous alternative
        },
      },
    })
  end,
}
