return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          cmd_env = {
            PATH = "/home/sunshine/go/bin:/usr/bin:/bin",
            GOROOT = "/home/sunshine/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.27.1.linux-amd64",
            GOTOOLCHAIN = "auto",
          },
        },
      },
    },
  },
}
