-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>gd", function()
  Util.float_term(
    { "lazydocker", "-f", Util.get_root() .. "docker-compose.yml" },
    { cwd = Util.get_root(), esc_esc = false }
  )
end, { desc = "LazyDocker (root dir)" })

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local merge = function(a, b)
  local c = {}
  for k, v in pairs(a) do
    c[k] = v
  end
  for k, v in pairs(b) do
    c[k] = v
  end
  return c
end

map("n", "<Esc>", ":q<CR>", merge(opts, { desc = "Close" }))
map({ "n", "i" }, "<C-f>", "<Esc>\"_dd", merge(opts, { desc = "Delete Current Line" }))
map({"n","i"}, "<C-d>", "<Esc>:t .<CR>", merge(opts, { desc = "Copy Line Down" }))
map("n", "<leader>i", "gg=G", merge(opts, { desc = "Indent Whole file" }))
map({ "n", "i" }, "<C-b>", "<PageDown>H0", merge(opts, { desc = "actual Page down" }))
map("n", "<leader>ll", ":Lazy<CR>", merge(opts, { desc = "Open Lazy.nvim" }))
map("n", "<leader>le", ":LazyExtras<CR>", merge(opts, { desc = "Open LazyVim Extras" }))
map("n", "<leader>fN", ":Neotree toggle=true position=current<CR>", merge(opts, { desc = "Neotree Netrw Style" }))
map("n", "<leader>sf", ":%s/original/updated" , {desc = "Substite all in Current file"})
map("x", "p", "P", {silent= true, desc = "fix the stupid behaviour of neovim"})
map("x", "d", "\"_d", {silent= true, desc = "fix the stupid behaviour of neovim"})
map({"n","x"}, "dd", "\"_dd", {silent= true, desc = "fix the stupid behaviour of neovim"})
