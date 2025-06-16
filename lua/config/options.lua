-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.fillchars = {
    foldopen = "",
    foldclose = "",
    fold = " ",
    foldsep = " ",
    diff = "╱",
    eob = " ",
}

-- opt.fillchars = {
--     vert = "│",
--     fold = "⠀",
--     eob = " ", -- suppress ~ at EndOfBuffer
--     -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
--     msgsep = "‾",
--     foldopen = "▾",
--     foldsep = "│",
--     foldclose = "▸",
-- }

-- ================================================================
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- ================================================================
-- LSP Server to use for Rust.
-- Set to "bacon-ls" to use bacon-ls instead of rust-analyzer.
-- only for diagnostics. The rest of LSP support will still be
-- provided by rust-analyzer.
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

-- ================================================================
-- Set to false to disable auto format
vim.g.lazyvim_eslint_auto_format = true

-- ================================================================
-- The setup below will automatically configure connections without the need for manual input each time.

-- Example configuration using dictionary with keys:
--    vim.g.dbs = {
--      dev = "Replace with your database connection URL.",
--      staging = "Replace with your database connection URL.",
--    }
-- or
-- Example configuration using a list of dictionaries:
--    vim.g.dbs = {
--      { name = "dev", url = "Replace with your database connection URL." },
--      { name = "staging", url = "Replace with your database connection URL." },
--    }

-- or
-- Create a `.lazy.lua` file in your project and set your connections like this:
-- ```lua
--    vim.g.dbs = {...}
--
--    return {}
-- ```

-- Alternatively, you can also use other methods to inject your environment variables.

-- Finally, please make sure to add `.lazy.lua` to your `.gitignore` file to protect your secrets.

-- ================================================================
-- In case you don't want to use `:LazyExtras`,
-- then you need to set the option below.
vim.g.lazyvim_picker = "telescope"
