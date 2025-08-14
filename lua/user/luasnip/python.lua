local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  -- print an f-string
  s("fp", {
    t('print(f"{'),
    i(1),
    t('}")'),
  }),
})
