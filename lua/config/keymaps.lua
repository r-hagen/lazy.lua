-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<c-a>")
keymap.set("n", "-", "<c-x>")

-- Delete word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<c-a>", "gg<s-v>G")

-- Jumplist
keymap.set("n", "<c-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<return>", opts)
keymap.set("n", "<tab>", ":tabnext<return>", opts)
keymap.set("n", "<s-tab>", ":tabnext<return>", opts)

-- Split window
keymap.set("n", "ss", ":split<return>", opts)
keymap.set("n", "sv", ":vsplit<return>", opts)

-- Move window
keymap.set("n", "sh", "<c-w>h", opts)
keymap.set("n", "sl", "<c-w>l", opts)
keymap.set("n", "sj", "<c-w>j", opts)
keymap.set("n", "sk", "<c-w>k", opts)

-- Resize window
keymap.set("n", "<c-w><left>", "<c-w><", opts)
keymap.set("n", "<c-w><right>", "<c-w>>", opts)
keymap.set("n", "<c-w><up>", "<c-w>+", opts)
keymap.set("n", "<c-w><down>", "<c-w>-", opts)

-- Diagnostics
keymap.set("n", "<c-j>", function()
  vim.diagnostic.goto_next()
end, opts)
