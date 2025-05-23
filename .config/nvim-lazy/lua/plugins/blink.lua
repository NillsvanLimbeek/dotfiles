return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "snippet_forward", "fallback" },
      ["<C-p>"] = { "snippet_backward", "fallback" },
      ["<CR>"] = {
        function(cmp)
          if vim.fn.getcmdtype() == "" then
            return cmp.select_and_accept()
          end
        end,
        "fallback",
      },
    },
    completion = {
      accept = {
        -- experimental auto-brackets support
        auto_brackets = {
          enabled = true,
        },
      },
      menu = {
        enabled = true,
        border = "rounded",
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
            -- { "source_name" },
          },
          treesitter = { "lsp" },
        },
      },
      documentation = {
        treesitter_highlighting = true,
        auto_show = true,
        window = {
          border = "rounded",
        },
      },
    },
  },
}
