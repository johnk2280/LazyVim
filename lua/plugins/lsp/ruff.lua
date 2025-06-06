-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff.lua
-- https://docs.astral.sh/ruff/editors/settings/
-- https://docs.astral.sh/ruff/editors/setup/#neovim

return {
    cmd = {
        "ruff",
        "server",
    },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "ruff.toml",
        ".ruff.toml",
        ".git",
    },
    -- settings = {},
    settings = {
        logLevel = "debug",
        logFile = "~/.cache/nvim/logs/ruff.log",
        configurationPreference = "filesystemFirst",
        exclude = {
            ".bzr",
            ".direnv",
            ".eggs",
            ".git",
            ".git-rewrite",
            ".hg",
            ".ipynb_checkpoints",
            ".mypy_cache",
            ".nox",
            ".pants.d",
            ".pyenv",
            ".pytest_cache",
            ".pytype",
            ".ruff_cache",
            ".svn",
            ".tox",
            ".venv",
            ".vscode",
            "__pypackages__",
            "_build",
            "buck-out",
            "build",
            "dist",
            "node_modules",
            "site-packages",
            "venv",
            ".idea",
            "temp",
            "../temp",
            ".coverage",
            ".env",
            "cov_html",
        },
        lineLength = 79,
        fixAll = true, -- by default
        organizeImports = true, -- by default
        showSyntaxErrors = true, -- by default
        codeAction = {
            disableRuleComment = {
                enable = true, -- by default
            },
            fixViolation = {
                enable = true, -- by default
            },
        },
        lint = {
            enable = true, -- by default
            preview = true, -- default null
            select = {
                "ALL",
            },
            ignore = {
                "Q",
                "D",
                "CPY",
                "N815",
                "TD002",
                "TD003",
                "RUF003",
                "TID252",
            },
            fixable = {
                "COM",
                "F401",
                "FA102",
                "I",
            },
        },
        format = {
            preview = true, -- default null
            quoteStyle = "single",
        },
    },
    init_options = {
        -- configuration = "./pyproject.toml",
        settings = {
            logLevel = "debug",
            logFile = "~/.cache/nvim/logs/ruff.log",
            configurationPreference = "filesystemFirst",
            exclude = {
                ".bzr",
                ".direnv",
                ".eggs",
                ".git",
                ".git-rewrite",
                ".hg",
                ".ipynb_checkpoints",
                ".mypy_cache",
                ".nox",
                ".pants.d",
                ".pyenv",
                ".pytest_cache",
                ".pytype",
                ".ruff_cache",
                ".svn",
                ".tox",
                ".venv",
                ".vscode",
                "__pypackages__",
                "_build",
                "buck-out",
                "build",
                "dist",
                "node_modules",
                "site-packages",
                "venv",
                ".idea",
                "temp",
                "../temp",
                ".coverage",
                ".env",
                "cov_html",
            },
            lineLength = 79,
            fixAll = true, -- by default
            organizeImports = true, -- by default
            showSyntaxErrors = true, -- by default
            codeAction = {
                disableRuleComment = {
                    enable = true, -- by default
                },
                fixViolation = {
                    enable = true, -- by default
                },
            },
            lint = {
                enable = true, -- by default
                preview = true, -- default null
                select = {
                    "ALL",
                },
                ignore = {
                    "Q",
                    "D",
                    "CPY",
                    "N815",
                    "TD002",
                    "TD003",
                    "RUF003",
                    "TID252",
                },
                fixable = {
                    "COM",
                    "F401",
                    "FA102",
                    "I",
                },
            },
            format = {
                preview = true, -- default null
                quoteStyle = "single",
            },
        },
    },
}
