return {
  "saghen/blink.cmp",
  opts = {
    snippets = {
      preset = "luasnip",
    },

    cmdline = {
      enabled = true,
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<CR>"] = { "accept_and_enter", "fallback" },
      },
    },
  },
}
