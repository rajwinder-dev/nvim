return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable inlay hints globally
      opts.inlay_hints = opts.inlay_hints or {}
      opts.inlay_hints.enabled = false

      -- Keep your vtsls settings
      opts.servers = opts.servers or {}
      opts.servers.vtsls = {
        settings = {
          typescript = {
            preferences = {
              noAnticipatedTypeAlias = true,
            },
          },
          javascript = {
            preferences = {
              noAnticipatedTypeAlias = true,
            },
          },
        },
      }
    end,
  },
}
