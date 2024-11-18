return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",

  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      transparent_background = true,
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
