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
keymaps.set("n", "o", "$a<CR><Esc>")
keymaps.set("n", "O", "O<Esc>")

----tmux keymaps
--keymaps.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
--keymaps.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
--keymaps.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
--keymaps.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
