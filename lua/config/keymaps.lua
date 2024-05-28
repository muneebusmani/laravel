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
map("n", "<Esc>", ":q<CR>", merge(opts, { desc = "Close" })) -- Close : ESC
map({ "n", "i" }, "<C-f>", "<Esc>dd", merge(opts, { desc = "Delete Current Line" })) -- Del Current Line : CTRL F
map("n", "<C-d>", ":t .<CR>", merge(opts, { desc = "Copy Line Down(Normal)" })) -- Copy Line Down (Normal): CTRL D
map("i", "<C-d>", "<C-o>:t .<CR>", merge(opts, { desc = "Copy Line Down(Insert)" })) -- Copy Line Down (Insert): ``
map("n", "<leader>i", "gg=G", merge(opts, { desc = "Indent Whole file" }))
-- map("i", "<C-n>", "<C-o>$", merge(opts, { desc = "" })) -- End Of Line : CTRL + N
map({ "n", "i" }, "<C-b>", "<PageDown>H0", merge(opts, { desc = "actual Page down" })) -- End Of Line : CTRL + N
map("n", "<leader>ll", ":Lazy<CR>", merge(opts, { desc = "Open Lazy.nvim" })) -- End Of Line : CTRL + N
map("n", "<leader>le", ":LazyExtras<CR>", merge(opts, { desc = "Open LazyVim Extras" })) -- End Of Line : CTRL + N
map("n", "<leader>fN", ":Neotree toggle=true position=current<CR>", merge(opts, { desc = "Neotree Netrw Style" })) -- End Of Line : CTRL + N
map("n", "<leader>sf", ":%s/original/updated" , {desc = "Substite all in Current file"})
-- map("n", "<leader>m", ":Mason<CR>", opts) -- End Of Line : SPACE, m

-- map("n", "<C-w>", "<leader>bd", opts)       -- Close Buffer
-- map("v", "<C-c>", '"+y', opts)
-- Bonus Shortcuts :
-- CTRL + n + Enter : Jump to next Line
-- Shift + V : open line select mode
-- CTRP + C Copy
