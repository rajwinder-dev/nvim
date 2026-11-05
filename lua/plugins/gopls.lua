return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          cmd_env = {
            GOROOT = vim.fn.expand(
              "~/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.27.1.linux-amd64"
            ),
            GOTOOLCHAIN = "local",
            PATH = vim.fn.expand(
              "~/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.27.1.linux-amd64/bin"
            ) .. ":/home/sunshine/go/bin:/usr/bin:/bin",
          },
        },
      },
    },
  },
}
