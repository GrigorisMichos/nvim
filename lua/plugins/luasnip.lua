return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")

    ls.setup({
      history = true,
      update_events = "TextChanged,TextChangedI",
    })

    require("luasnip.loaders.from_lua").load({
      paths = { vim.fn.stdpath("config") .. "/snippets" },
    })
  end,
}