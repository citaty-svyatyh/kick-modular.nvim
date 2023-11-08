-- Изменяя тему не забывай менять тему и у statusline (lualine) - статусной строке --
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme 'catppuccin'
	end,
}
