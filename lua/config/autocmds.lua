-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local colorcolumn = augroup("johnk2280/colorcolumn", { clear = true })
local buffer_autosave = augroup("johnk2280/buffer_autosave", { clear = true })

-- Setup colorcolumn
local python_width = "79"
local ts_width = "120"
local other_width = "120"

-- autocmd("FileType", {
--     pattern = "*",
--     group = colorcolumn,
--     callback = function()
--         -- vim.cmd("highlight ColorColumn ctermbg=0 guibg=Black")
--         if vim.bo.filetype == "python" then
--             vim.opt.colorcolumn = python_width
--         elseif
--             vim.bo.filetype == "javascript"
--             or vim.bo.filetype == "typescript"
--             or vim.bo.filetype == "typescriptreact"
--             or vim.bo.filetype == "javascriptreact"
--         then
--             vim.opt.colorcolumn = ts_width
--         else
--             vim.opt.colorcolumn = other_width
--         end
--     end,
-- })

-- Auto save when focus is lost, buffer leave, INSERT mode leave
autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
    pattern = "*",
    group = buffer_autosave,
    callback = function()
        if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" then
            vim.cmd("write")
        end
    end,
    -- command = "silent! wa",
    desc = "Auto save when focus is lost, buffer left, INSERT mode left",
})
