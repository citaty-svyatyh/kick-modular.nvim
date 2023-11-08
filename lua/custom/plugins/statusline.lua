return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = false,
			theme = 'catppuccin',
			component_separators = '|',
			section_separators = '',
		},
		sections = {
			lualine_a = { 'mode',
				-- Моя добавка, чтобы видеть когда режим PASTE
				function()
					if vim.o.paste == true then return 'PASTE' else return '' end
				end, },
			lualine_b = { 'diagnostics' },   -- Покажет варнинги от LSP
			lualine_c = { 'filename' },
			lualine_x = { 'encoding', 'fileformat', 'filetype' },
			lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
	},
}
