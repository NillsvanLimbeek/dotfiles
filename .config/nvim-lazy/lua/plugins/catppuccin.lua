return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",

  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "mocha",
      transparent_background = true,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
