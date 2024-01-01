-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({ "n" }, "<Esc>", ":q<CR>", opts) -- Close : ESC
map({ "n", "i" }, "<C-f>", "<Esc>dd", opts) -- Del Current Line : CTRL F
map("n", "<C-d>", ":t .<CR>", opts) -- Copy Line Down (Normal): CTRL D
map("i", "<C-d>", "<C-o>:t .<CR>", opts) -- Copy Line Down (Insert): ``
map("i", "<C-n>", "<C-o>$", opts) -- End Of Line : CTRL + N
-- map("n", "<leader>m", ":Mason<CR>", opts) -- End Of Line : SPACE, m

-- map("n", "<C-w>", "<leader>bd", opts)       -- Close Buffer
-- map("v", "<C-c>", '"+y', opts)
-- Bonus Shortcuts :
-- CTRL + n + Enter : Jump to next Line
-- Shift + V : open line select mode
-- CTRP + C Copy
