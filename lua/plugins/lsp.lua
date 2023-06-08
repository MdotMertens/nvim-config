return {
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        {'neovim/nvim-lspconfig'}, 
        {
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'},
        {'hrsh7th/nvim-cmp'}, 
        {'hrsh7th/cmp-nvim-lsp'}, 
        {'L3MON4D3/LuaSnip'},
      },
      config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
          lsp.default_keymaps({buffer = bufnr})
        end)

        -- (Optional) Configure lua language server for neovim
        -- require('lspconfig').pyright.setup({})

        lsp.setup()
      end,
      event = "BufEnter"
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
          "williamboman/mason.nvim",
          "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
          require("mdotmertens.nullls") -- require your null-ls config here (example below)
        end,
    },
}

