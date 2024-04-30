-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Save & Quit
vim.keymap.set("n", "<leader>w", "<cmd>w!<cr>", { desc = "[W]rite Buffer" })
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { desc = "[Q]uit Buffer" })

-- Navigating Buffer Tabs
vim.keymap.set("n", "<S-h>", ":bprev<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })

-- Moving Code
vim.keymap.set("n", "<S-k>", ":m -2<CR>", { desc = "Move current line down" })
vim.keymap.set("n", "<S-j>", ":m +1<CR>", { desc = "Move current line up" })

-- Move to window using the <leader> hjkl keys
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move focus to left window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move focus to above window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move focus to below window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move focus to right window" })
