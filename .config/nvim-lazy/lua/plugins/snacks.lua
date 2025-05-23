return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    lazygit = {},
    explorer = {},
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "right" } },
          win = {
            list = {
              keys = {
                ["h"] = "toggle_hidden",
                ["i"] = "toggle_ignored",
                ["z"] = "explorer_close_all",
              },
            },
          },
        },
      },
    },
  },
}
