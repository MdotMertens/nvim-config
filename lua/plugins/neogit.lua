return {
    {
        'TimUntersberger/neogit',
        config = function ()
            require('neogit').setup()
        end,
        keys={
		{"<leader>gs", "<cmd>Neogit<CR>", desc="Git Status"},
        }
    }
}
