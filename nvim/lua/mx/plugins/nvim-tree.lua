local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "→",
					arrow_open = "↓",
				},
			},
		},
	},
	filters = {
		custom = { ".aux", ".bbl", ".fdb_latexmk", ".fls", ".lof", ".lol", ".lot", ".synctex.gz" },
	},
})
