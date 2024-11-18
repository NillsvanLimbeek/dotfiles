return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = true,
      long_message_to_split = true,
    },
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
      hover = {
        silent = true,
      },
    },
  },
}
