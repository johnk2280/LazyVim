return {
    -- {
    --     "folke/tokyonight.nvim",
    --     opts = {
    --         transparent = true,
    --         styles = {
    --             sidebars = "transparent",
    --             floats = "transparent",
    --         },
    --     },
    -- },
    -- {
    --     "datsfilipe/vesper.nvim",
    --     config = function()
    --         require("vesper").setup({
    --             transparent = true, -- Boolean: Sets the background to transparent
    --             italics = {
    --                 comments = true, -- Boolean: Italicizes comments
    --                 keywords = false, -- Boolean: Italicizes keywords
    --                 functions = false, -- Boolean: Italicizes functions
    --                 strings = false, -- Boolean: Italicizes strings
    --                 variables = false, -- Boolean: Italicizes variables
    --             },
    --             overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
    --             palette_overrides = {},
    --         })
    --     end,
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "vesper",
    --     },
    -- },

    {
        "sontungexpt/witch",
        priority = 1000,
        lazy = false,
        config = function(_, opts)
            require("witch").setup(require("plugins.colorschemes.witch"))
        end,
    },
}
