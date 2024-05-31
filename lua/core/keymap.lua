vim.g.mapleader = " "

local keymap = vim.keymap

-- -----------插入模式--------- ---
keymap.set("i", "jk", "<ESC>")

-- -----------视觉模式--------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -----------正常模式--------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 向右分割窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 乡下分割窗口
keymap.set("n", "<leader>se", "<C-w>=") -- 保证分割窗口宽度相同
keymap.set("n", "<leader>sx", ":close<CR>") -- 关闭当前窗口

keymap.set("n", "<leader>to", ":tabnew<CR>") -- 打开新窗口
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- 关闭当前窗口
keymap.set("n", "<leader>tn", ":tabn<CR>") -- 移动到下一个窗口
keymap.set("n", "<leader>tp", ":tabp<CR>") -- 移动到上一个窗口

-- 取消高亮 
keymap.set("n", "<leader>nh", ":nohl")

-- vim maxmizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- 打开和关闭nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 缓冲区进行切换
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
