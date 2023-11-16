-- Map Leader
vim.g.mapleader = "'"

-- 保存本地变量
local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- map('模式','按键','映射', opt)

map("n", "<C-s>", ":w<CR>", opt)
map("n", "<C-q>", ":q<CR>", opt)

-- 快捷缩进
map('v', '<', '<gv')
map('v', '>', '>gv')

-- 分屏
map("n", "s=", ":vsp<CR>")
map("n", "s-", ":sp<CR>")
map("n", "sc", "<C-w>c")
map("n", "so", "<C-w>o") -- close others

-- nvimTree
map("n", '<leader>t', ':NvimTreeToggle<CR>', opt)

-- undoTree
map("n", '<leader>u', ':UndotreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- 剪切板
map({"n", "v"}, "y", [["+y]], opt)
-- map({"n", "v"}, "<leader>p", [["+p]], opt)

-- JK移动所在行
-- map("v", "J", ":m '>+1<CR>gv=gv")
-- map("v", "K", ":m '<-2<CR>gv=gv")

-- 批量替换
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ESC
map("i", "<C-c>", "<Esc>")
