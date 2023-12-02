-- Показ табуляции буферов --
return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'kyazdani42/nvim-web-devicons',
	config = function()
		require("bufferline").setup {
			options = {
				close_icon = '',
				buffer_close_icon = '',
			}
		}
	end,
}


-- vim: ts=2 sts=2 sw=2 et
