local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"volar",
		"csharp_ls",
		"gopls",
		"clangd",
		"tailwindcss",
		"bufls",
		"cssls",
		"cmake",
		"templ",
		"html",
		"htmx",
		"ltex",
		"rust_analyzer",
		"zls",
	},
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"csharpier", -- c# formatter
		"eslint_d", -- ts/js linter
		"gofmt", -- golang formatter
		"clang_format", -- cpp formatter
		"buf", -- protobuf formatter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
