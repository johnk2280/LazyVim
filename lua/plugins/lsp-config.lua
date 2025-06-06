return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        ---@type lspconfig.options
        servers = {
            -- pyright will be automatically installed with mason and loaded with lspconfig
            pyright = require("plugins.lsp.pyright"),
            ruff = require("plugins.lsp.ruff"),

            html = require("plugins.lsp.html"),
            css_variables = require("plugins.lsp.css_variables"),
            cssls = require("plugins.lsp.cssls"),
        },
    },
}
