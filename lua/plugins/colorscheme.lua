return {
    -- =================================================================================================================
    -- {
    --     "sainnhe/edge",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- Optionally configure and load the colorscheme
    --         -- directly inside the plugin declaration.
    --         vim.g.edge_enable_italic = true
    --         vim.g.edge_transparent_background = 1
    --         vim.cmd.colorscheme("edge")
    --     end,
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "edge",
    --     },
    -- },
    -- =================================================================================================================
    -- {
    --     "askfiy/visual_studio_code",
    --     priority = 100,
    --     config = function()
    --         vim.cmd([[colorscheme visual_studio_code]])
    --     end,
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "visual_studio_code",
    --     },
    -- },
    -- =================================================================================================================
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     opts = {
    --         transparent_background = true,
    --     },
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "catppuccin",
    --     },
    -- },
    -- =================================================================================================================
    -- =================================================================================================================
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
    --
    -- =================================================================================================================
    --
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
    --  =================================================================================================================
    -- {
    --     "sontungexpt/witch",
    --     priority = 1000,
    --     lazy = false,
    --     config = function(_, opts)
    --         -- require("witch").setup(require("plugins.colorschemes.witch"))
    --         require("witch").setup(opts)
    --     end,
    -- },
    --
    -- =================================================================================================================
    --
    -- {
    --     "everviolet/nvim",
    --     name = "evergarden",
    --     priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    --     opts = {
    --         theme = {
    --             variant = "winter", -- 'winter'|'fall'|'spring'|'summer'
    --             accent = "green",
    --         },
    --         editor = {
    --             transparent_background = true,
    --             sign = { color = "none" },
    --             float = {
    --                 color = "mantle",
    --                 invert_border = false,
    --             },
    --             completion = {
    --                 color = "surface0",
    --             },
    --         },
    --     },
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "evergarden",
    --     },
    -- },
    -- =================================================================================================================
    -- {
    --     "sainnhe/sonokai",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- Optionally configure and load the colorscheme
    --         -- directly inside the plugin declaration.
    --         vim.g.sonokai_enable_italic = true
    --         vim.cmd.colorscheme("sonokai")
    --     end,
    -- },
    -- =================================================================================================================
    {
        "xiantang/darcula-dark.nvim",
        config = function()
            -- setup must be called before loading
            require("darcula").setup({
                opt = {
                    integrations = {
                        telescope = false,
                        -- lualine = true,
                        -- lsp_semantics_token = true,
                        -- nvim_cmp = true,
                        -- dap_nvim = true,
                    },
                },
            })
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "darcula-dark",
        },
    },
    -- -- =================================================================================================================
    -- { "Carcuis/darcula.nvim" },
    --
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "darcula",
    --     },
    -- },
    -- =================================================================================================================
    -- { "tallestlegacy/darcula.nvim" },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "darcula",
    --     },
    -- },
}
