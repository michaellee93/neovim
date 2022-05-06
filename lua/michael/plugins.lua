local fn = vim.fn

-- Automatically instally packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim ..."
	vim.cmd [[packadd packer.nvim]]
end


vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]


-- use protected call so we don't error
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end


-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}



-- INSTALL PLUGINS HERE
return packer.startup(function(use)
	-- My plugins here
	use "wbthomason/packer.nvim" -- Packer manages itself
	use "nvim-lua/popup.nvim" -- needed for other plugs
	use "nvim-lua/plenary.nvim" -- needed for other plugs


	-- autocompletion plugins
	use "hrsh7th/nvim-cmp" -- completion plugin
	use "hrsh7th/cmp-buffer" -- buffer 
	use "hrsh7th/cmp-path" -- path
	use "hrsh7th/cmp-cmdline" -- cmdline
	use "saadparwaiz1/cmp_luasnip" -- snippet 
	use "hrsh7th/cmp-nvim-lsp" -- cmdline

	-- snippets
	use "L3MON4D3/LuaSnip" -- snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- lang server installer

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
