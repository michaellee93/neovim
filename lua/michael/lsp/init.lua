local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("michael.lsp.lsp-installer")
require("michael.lsp.handlers").setup()
