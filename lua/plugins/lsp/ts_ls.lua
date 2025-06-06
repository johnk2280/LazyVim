-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ts_ls.lua
-- https://github.com/typescript-language-server/typescript-language-server/blob/master/docs/configuration.md

return {
    cmd = {
        "typescript-language-server",
        "--stdio",
    },
    init_options = {
        hostInfo = "neovim",
        preferences = {
            -- importModuleSpecifierPreference = "shortest",  -- by default "shortest", avaliable: 'shortest', 'project-relative', 'relative', 'non-relative'
            -- importModuleSpecifierEnding = "auto", -- by default "auto", avaliable: 'auto', 'minimal', 'index', 'js'
            -- organiseImportsIgnoreCase = "auto", -- by default "auto", avaliable: 'auto', boolean
            -- includePackageJsonAutoImports = "auto", -- by default "auto", avaliable: 'auto', 'on', 'off'
            jsxAttributeCompletionStyle = "braces",
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = false, -- by default
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
        },
    },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    root_makers = {
        {
            "tsconfig.json",
            "jsconfig.json",
            "package.json",
        },
        ".git",
    },
}
