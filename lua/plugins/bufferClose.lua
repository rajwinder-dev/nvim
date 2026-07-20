return {
  "chrisgrieser/nvim-early-retirement",
  event = "VeryLazy",
  opts = {
    retirementAgeMins = 10, -- close buffer if untouched for 15 min
    ignoredFiletypes = { "lazy", "help", "toggleterm", "neo-tree" },
    ignoreUnsavedChangesBufs = true,
    ignoreVisibleBufs = true, -- won't close what's on screen
    minimumBufferNum = 5, -- always keep at least N buffers open
  },
}
