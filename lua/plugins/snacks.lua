return {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        dashboard = {
            -- your dashboard configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            sections = {
                { section = "header" },
                {
                    icon = " ",
                    -- title = "Keymaps",
                    section = "keys",
                    indent = 2,
                    padding = 2,
                    gap = 1,
                },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
                { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
                { section = "startup" },
            },
        },
        picker = {
            -- hidden = true,
            -- ignored = true,
            -- exclude = {
            --     "**/.git",
            --     "**/.DS_Store",
            --     "**cache**",
            --     **/.idea,
            -- },
            include = {
                "**/.gitignore",
                "**/.gitlab**",
                "**/.github**",
                "**/.env**",
                "**/.env",
                "**/.python-version",
                "**/logs",
                "**/.logs",
                "**/temp",
                "**/.temp",
                "**/.venv",
                "**/node_modules",
                "**/.npmrc",
                "**/.stylelintrc**",
                "**/.stylelintrc",
                "**/.eslintrc**",
                "**/.eslintrc",
                "**/.prettierrc",
                "**/.eslintignore",
                "**/target",
            },
        },
        indent = {
            enabled = false,
        },
    },
}
