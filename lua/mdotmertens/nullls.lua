local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.ruff_lsp
    }
})

require("mason-null-ls").setup({
    ensure_installed = nil,
    automatic_installation = true,
})
