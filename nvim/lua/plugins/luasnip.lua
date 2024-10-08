return {
	"L3MON4D3/LuaSnip",
	tag = "v2.*",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()

		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		ls.add_snippets("lean", {
			s("cs", {
				t({ "constructor", "· " }),
				i(0),
				t({ "", "  sorry", "·", "  sorry" }),
			}),
			s("cor", {
				t("cases "),
				i(0),
				t({ " with", "| inl h =>", "  sorry", "| inr h =>", "  sorry" }),
			}),
		})
	end,
}
