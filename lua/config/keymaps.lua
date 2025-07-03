-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--

local map = vim.keymap.set

-- Move to window using the <ctrl> ,aei keys (instead of default hjkl)
map("n", "<C-,>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-a>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-e>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-i>", "<C-w>l", { desc = "Go to Right Window", remap = true })
