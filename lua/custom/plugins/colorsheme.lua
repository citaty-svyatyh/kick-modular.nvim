-- Изменяя тему не забывай менять тему и у statusline (lualine) - статусной строке --
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require('catppuccin').setup(
			{
				color_overrides = {
					all = {
						rosewater = "#efc9c2",
						flamingo = "#ebb2b2",
						pink = "#f2a7de",
						mauve = "#b889f4",
						red = "#ea7183",
						maroon = "#ea838c",
						peach = "#f39967",
						yellow = "#eaca89",
						green = "#96d382",
						teal = "#78cec1",
						sky = "#91d7e3",
						sapphire = "#68bae0",
						blue = "#739df2",
						lavender = "#a0a8f6",
						text = "#ffffff",
						subtext1 = "#a6b0d8",
						subtext0 = "#959ec2",
						overlay2 = "#848cad",
						overlay1 = "#717997",
						overlay0 = "#63677f",
						surface2 = "#505469",
						surface1 = "#3e4255",
						surface0 = "#2c2f40",
						base = "#1a1c2a",
						mantle = "#141620",
						crust = "#0e0f16",
					},
				},
				custom_highlights = function(colors)
					return {
						Comment = { fg = colors.flamingo },
						TabLineSel = { bg = colors.pink },
						CmpBorder = { fg = colors.surface2 },
						Pmenu = { bg = colors.none },
					}
				end
			}

		)
		vim.cmd.colorscheme 'catppuccin'
	end,
}
