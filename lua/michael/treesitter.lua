local configs = require("nvim-treesitter.configs")

configs.setup {
	ensure_installed = {"rust", "go", "javascript", "vue", "lua", "json", "tsx", "c", "cpp", "css", "html", "python"},
	sync_install = false,
	--ignore_install = {""}, -- for broken parsers
	highlight = {
		enable = true, -- false will disable the whole extension
--		disable = {""}, -- list of langs to be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = {"yaml"}},

}
