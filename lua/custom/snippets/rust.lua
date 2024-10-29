require("luasnip.session.snippet_collection").clear_snippets "rust"

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("rust", {
    s("fn", fmt("fn {}({}) {}{a}\n{}\n{b}", { i(1), i(2), i(3), a=t("{"), i(4), b=t("}") })),
})
