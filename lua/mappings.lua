require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", { silent = true })
map("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", { silent = true })
map("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", { silent = true })
map("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", { silent = true })
