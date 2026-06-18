return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        -- Register the custom Brief parser (Avito internal grammar).
        -- nvim-treesitter `main` branch: parsers are entries in this table.
        -- Requires SSH access to stash.msk.avito.ru.
        require("nvim-treesitter.parsers").brief = {
            ---@diagnostic disable-next-line: missing-fields
            install_info = {
                url = "ssh://git@stash.msk.avito.ru:7999/arch/tree-sitter-brief.git",
                -- branch = "master",  -- uncomment if the repo default branch isn't `main`
                -- revision = "<sha>", -- pin for reproducible installs
            },
            tier = 3,
        }

        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, {
            "vim",
            "lua",
            "vimdoc",
            "html",
            "css",
            "csv",
            "dockerfile",
            "dot",
            "fsharp",
            "git_config",
            "git_rebase",
            "gitattributes",
            "gitcommit",
            "gitignore",
            "htmldjango",
            "javascript",
            "json",
            "json5",
            "nginx",
            "python",
            "regex",
            "requirements",
            "rust",
            "scss",
            "sql",
            "toml",
            "tsv",
            "tsx",
            "typescript",
            "vue",
            "yaml",
            "brief",
        })
    end,
}
