return {
  "mistweaverco/kulala.nvim",
  opts = function(_, opts)
    opts.global_keymaps = false
    -- "horizontal" | "vertical"
    opts.split_direction = "horizontal"

    return opts
  end,
}
