return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "echasnovski/mini.icons" },

  config = function()
    local oil = require("oil")

    oil.setup({
      default_file_explorer = false,
    })

    -- keys
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
