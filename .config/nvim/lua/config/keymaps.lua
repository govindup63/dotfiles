-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- Incriment/decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

--Select-all
keymaps.set("n", "<C-a>", "gg<S-v>G")

--NewLine Keymaps
keymaps.set("n", "o", "o<Esc>")
keymaps.set("n", "O", "O<Esc>")
