-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = vim.keymap.set
local map = vim.keymap.set
---comment
---@param description string
---@return table
local opts = function(description)
  return { noremap = true, silent = true, desc = description }
end

map("n", "<leader>j", "j^", opts("goto start of next line"))
map("n", "<leader>J", "j$", opts("goto end of next line"))
map("n", "<leader>k", "k^", opts("goto start of previous line"))
map("n", "<leader>K", "k$", opts("goto end of previous line"))
map("n", "<Esc>", ":q<CR>", opts("Close"))
map({ "n", "i" }, "<A-f>", '<Esc>"_dd', opts("Delete Current Line"))
map({ "n", "i" }, "<A-d>", "<Esc>:t .<CR>", opts("Copy Line Down"))
map("n", "<leader>i", "gg=G", opts("Indent Whole file"))
map("n", "<A-a>", 'ggvG"+y', opts("Select All and copy"))
map({ "n", "i" }, "<C-b>", "<PageDown>H0", opts("actual Page down"))
map("n", "<leader>ll", ":Lazy<CR>", opts("Open Lazy.nvim"))
map("n", "<leader>le", ":LazyExtras<CR>", opts("Open LazyVim Extras"))
map("n", "<leader>fN", ":Neotree toggle=true position=current<CR>", opts("Neotree Netrw Style"))
map("n", "<leader>sf", ":%s/original/updated", opts("Substite all in Current file"))
map("x", "p", "P", opts("fix the stupid behaviour of neovim"))
map("x", "d", '"_d', opts("fix the stupid behaviour of neovim"))
map({ "n", "x" }, "dd", '"_dd', opts("fix the stupid behaviour of neovim"))
map("n", "<leader>de", "DBUI", opts("Database Explorer"))
map("n", "<leader>da", "DBUIAddConnection", opts("Add Database Connection"))
map("n", "<leader>ut", "<cmd>lua require('undotree').toggle()<cr>", opts("Toggle UndoTree"))
-- local hop = require('hop')
-- local directions = require('hop.hint').HintDirection
--
-- vim.keymap.set('', 'f', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
-- end, {remap=true})
-- vim.keymap.set('', 'F', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- end, {remap=true})
-- vim.keymap.set('', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
require("config.lazydocker")
require("config.lazygit")
