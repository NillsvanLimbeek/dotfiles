return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<leader>bc", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete all buffers" },
  },
  opts = {
    options = {
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
}
