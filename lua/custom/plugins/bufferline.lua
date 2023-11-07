return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'kyazdani42/nvim-web-devicons',
	config = function()
		require("bufferline").setup {
			options = {
				close_icon = '',
				buffer_close_icon = '',
			},
		}
	end,
}
