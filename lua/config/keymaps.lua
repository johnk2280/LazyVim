-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- General
map("i", "jj", "<ESC>")

-- Terminal
map("t", "jj", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- Bufferline
map("n", "<Tab>", ":BufferLineCycleNext<CR>")
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
