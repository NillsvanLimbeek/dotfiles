return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_b = {
        "branch",
      },
      lualine_c = {
        "filename",
        {
          "diff",
          symbols = { added = " ", modified = " ", removed = " " },
          diff_color = {
            added = { fg = require("catppuccin.palettes").get_palette("mocha").green },
            modified = { fg = require("catppuccin.palettes").get_palette("mocha").yellow },
            removed = { fg = require("catppuccin.palettes").get_palette("mocha").red },
          },
        },
      },
      lualine_x = {
        { "filetype", separator = "", padding = { left = 1, right = 1 } },
      },
      lualine_y = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
  },

  specs = {
    {
      "rebelot/heirline.nvim",
      optional = true,
      opts = function(_, opts)
        opts.statusline = nil
        opts.winbar = nil
      end,
    },
  },
}
