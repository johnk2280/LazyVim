return {
    "nvim-treesitter/nvim-treesitter",
    init = function()
        -- Register the custom Brief parser (Avito internal grammar).
        -- Must go through a `User TSUpdate` autocmd: nvim-treesitter's `main`
        -- branch wipes the parser table (package.loaded = nil) and fires this
        -- event before every install/update (see install.lua `reload_parsers`),
        -- so a one-shot registration done elsewhere is discarded.
        vim.api.nvim_create_autocmd("User", {
            pattern = "TSUpdate",
            group = vim.api.nvim_create_augroup("brief_ts_parser", { clear = true }),
            callback = function()
                ---@diagnostic disable-next-line: missing-fields
                require("nvim-treesitter.parsers").brief = {
                    ---@diagnostic disable-next-line: missing-fields
                    install_info = {
                        -- main-branch nvim-treesitter downloads parsers via curl (no ssh),
                        -- so point at a local clone instead and it compiles from there:
                        --   git clone ssh://git@stash.msk.avito.ru:7999/arch/tree-sitter-brief.git ~/.config/tree-sitter-parsers/tree-sitter-brief
                        path = vim.fn.expand("~/.config/tree-sitter-parsers/tree-sitter-brief"),
                        -- location = "parser", -- if parser.c lives in a monorepo subdir
                        -- generate = true,     -- only if the repo lacks a pre-generated src/parser.c
                        queries = "queries", -- install highlight queries from the repo (for highlighting)
                    },
                    tier = 3,
                }
            end,
        })
    end,
    opts = {
        ensure_installed = {
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
            "go",
            "gomod", -- go.mod
            "gosum", -- go.sum
            "gowork", -- go.work
            "gotmpl", -- Go templates
        },
    },
}
