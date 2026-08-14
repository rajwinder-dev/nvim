return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            preferences = {
              -- Set this to true to force it to expand and display the full type block
              noAnticipatedTypeAlias = true,
            },
          },
          javascript = {
            preferences = {
              noAnticipatedTypeAlias = true,
            },
          },
        },
      },
    },
  },
}
