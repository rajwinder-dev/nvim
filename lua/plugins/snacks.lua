return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            exclude = {
              "node_modules/",
              ".git/",
              "dist/",
              "build/",
              ".astro/",
            },
          },

          files = {
            hidden = true,
            ignored = true,
            exclude = {
              "node_modules/",
              ".git/",
              "dist/",
              "build/",
              ".astro/",
            },
          },
        },
      },
    },
  },
}
