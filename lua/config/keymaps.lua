-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--- HARPOON 2 MAPS
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-n>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-m>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-,>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-.>", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- Next buffer
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })

-- Previous buffer
vim.keymap.set("n", "<S-h>", "<cmd>bprev<CR>", { desc = "Previous buffer" })

-- Close buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- split
-- Horizontal split
vim.keymap.set("n", "<leader>wh", "<cmd>split<CR>", { desc = "Split horizontal" })

-- Vertical split
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "Split vertical" })

-- Equalize splits
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Equalize splits" })

-- Close split
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close split" })
