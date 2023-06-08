return {
	{
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-file-browser.nvim'
	},
	keys = {
		{"<leader>ff", "<cmd>Telescope find_files<CR>", desc="File finder"},
		{"<leader>fb", "<cmd>Telescope file_browser<CR>", desc="File browser"},
		{"<leader>fg", "<cmd>Telescope live_grep<CR>", desc="grep files"},
		{"<leader>qf", "<cmd>Telescope quickfix<CR>", desc="quickfix list"}
	},
	config = function()
		require('telescope').load_extension "file_browser"
	end,
	}
}
