-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Keep the short explorer mappings stable: lowercase uses cwd, uppercase uses the detected project root.
vim.keymap.set("n", "<leader>e", "<leader>fE", { remap = true, desc = "Explorer NeoTree (cwd)" })
vim.keymap.set("n", "<leader>E", "<leader>fe", { remap = true, desc = "Explorer NeoTree (Root Dir)" })
