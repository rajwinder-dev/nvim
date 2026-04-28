return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertEnter", "TextChanged" },
    opts = {
      enabled = true,
      debounce_delay = 1500,
      trigger_events = {
        defer_save = { "TextChanged" },
        immediate_save = { "FocusLost", "BufLeave", "QuitPre" },
      },
    },
  },
}
