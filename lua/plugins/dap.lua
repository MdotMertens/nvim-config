return {
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            'rcarriga/nvim-dap-ui',
            'nvim-neotest/neotest',
            'nvim-neotest/neotest-python',
            'mfussenegger/nvim-dap-python'
        },
        config = function ()
            require('dap')
            require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')


            require("neotest").setup({
                adapters = {
                require("neotest-python")({
                      dap = { justMyCode = false },
                    }),
                }
            })

            require("dapui").setup()
        end,
        keys = {
            {"<leader>tr", "<cmd>lua require('neotest').run.run()<CR>", desc="File finder"},
            {"<leader>tdr", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", desc="File finder"},
            {"<leader>dui", "<cmd>lua require('dapui').toggle()<CR>", desc="File finder"},
            {"<leader>we", "<cmd>lua require('dapui').elements.watches.add()<CR>", desc="File finder"},
            {"<leader>dc", "<cmd>lua require('dap').continue()<CR>", desc="File finder"},
            {"<leader>tb", "<cmd>lua require('dap').toggle_breakpoint()<CR>", desc="File finder"},
        }
    }
}
