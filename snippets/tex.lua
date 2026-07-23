local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("lem", {
    t({ "\\begin{lemma}", "\\label{lem:" }),
    i(1, "key"),
    t({ "}", "" }),
    i(2),
    t({ "", "\\end{lemma}" }),
  }),

  s("prop", {
    t({ "\\begin{proposition}", "\\label{prop:" }),
    i(1, "key"),
    t({ "}", "" }),
    i(2),
    t({ "", "\\end{proposition}" }),
  }),

  s("subeq", {
    t({
      "\\begin{subequations}",
      "\\label{eq:",
    }),
    i(1, "name"),
    t({
      "}",
      "\\begin{align}",
      "",
    }),
    i(2),
    t({
      "",
      "\\end{align}",
      "\\end{subequations}",
    }),
  }),
  s("cor", {
    t({ "\\begin{corollary}", "\\label{cor:" }),
    i(1, "key"),
    t({ "}", "" }),
    i(2),
    t({ "", "\\end{corollary}" }),
  }),
  --
  s("tikzfig", {
    t({
      "\\begin{figure}[t]",
      "\t\\centering",
      "\t\\resizebox{",
    }),
    i(1, "0.7\\columnwidth"),
    t({ "}{!}{%", "\t\t\\input{" }),
    i(2, ""),
    t({
      "}",
      "\t}",
      "\t\\caption{",
    }),
    i(3, "Caption"),
    t({ "}", "\t\\label{" }),
    i(4, "fig:label"),
    t({
      "}",
      "\\end{figure}",
    }),
  }),
  --
  s("fig", {
    t({
      "\\begin{figure}[t]",
      "\t\\centering",
      "\t\\includegraphics[width=",
    }),
    i(1, "0.8\\columnwidth"),
    t({ "]{" }),
    i(2, ""),
    t({
      "}",
      "\t\\caption{",
    }),
    i(3, "Caption"),
    t({ "}", "\t\\label{" }),
    i(4, "fig:label"),
    t({
      "}",
      "\\end{figure}",
    }),
  }),
}
