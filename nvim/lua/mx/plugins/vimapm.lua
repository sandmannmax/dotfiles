-- import vimapm plugin safely
local status, apm = pcall(require, "vim-apm")
if not status then
	return
end

apm:setup({})
vim.keymap.set("n", "<leader>apm", function()
	apm:toggle_monitor()
end)
