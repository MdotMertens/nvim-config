return {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
        { "nvim-treesitter/nvim-treesitter" }
    },
    keys = {
		{"<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", desc="Show line diagnostics"},
		{"<leader>bd", "<cmd>Lspsaga show_buf_diagnostics<CR>", desc="Show buffer diagnostics"},
		{"<leader>ci", "<cmd>Lspsaga calls_incoming<CR>", desc="Show incoming calls"},
		{"<leader>co", "<cmd>Lspsaga calls_outgoing<CR>", desc="Show outgoing calls"},
		{"[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc="Jump to next diagnostic"},
		{"]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc="Jump to prev diagnostic"},
		{"<leader>co", "<cmd>Lspsaga calls_outgoing<CR>", desc="Show outgoing calls"},
		{"K", "<cmd>Lspsaga hover_doc<CR>", desc="Hover documentation"},


    }
}
