require "michael.options"
require "michael.keymaps"
require "michael.plugins"
require "michael.cmp"
require "michael.lsp"
require "michael.treesitter"
require "michael.nvim-tree"
require "michael.gitsigns"
require "michael.bufferline"
require "michael.autopairs"
require "michael.toggleterm"
require "michael.telescope"

-- if night time else 
local temp = os.date("*t")
if temp.hour < 5 or temp.hour > 17 then
	require("vscode").change_style("dark")
else
	vim.cmd "colorscheme terafox"
end
