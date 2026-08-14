return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertEnter", "TextChanged" },
    opts = {
      enabled = true,
      debounce_delay = 5000,
      trigger_events = {
        defer_save = {},
        immediate_save = { "BufLeave", "QuitPre" },
      },
    },
  },
}
