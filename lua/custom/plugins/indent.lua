-- Плагин палочки вертикальные рисует для отступов
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			exclude = {
				filetypes = {
					"help",
					"terminal",
					"starter",
					"nvim-tree",
					"packer",
					"lspinfo",
					"TelescopePrompt",
					"TelescopeResults",
					"mason",
					"dashboard",
				}
			},
		})
	end,

}
