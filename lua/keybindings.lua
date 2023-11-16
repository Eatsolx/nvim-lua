-- Map Leader
vim.g.mapleader = "'"

-- 设置leader键停留时间
vim.o.timeoutlen = 1000

-- 保存本地变量
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- map('模式','按键','映射', opts)

map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)

-- 快捷缩进
map('v', '<', '<gv')
map('v', '>', '>gv')

-- 分屏
map("n", "s=", ":vsp<CR>")
map("n", "s-", ":sp<CR>")
map("n", "sc", "<C-w>c")
map("n", "so", "<C-w>o") -- close others

-- nvimTree
map("n", '<leader>tr', ':NvimTreeToggle<CR>', opts) 

-- ranger
map("n", "<leader>ef", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })

-- undoTree
map("n", '<leader>u', ':UndotreeToggle<CR>', opts)

-- 剪切板
map({"n", "v"}, "y", [["+y]], opts)
-- map({"n", "v"}, "<leader>p", [["+p]], opts)

-- JK移动所在行
-- map("v", "J", ":m '>+1<CR>gv=gv")
-- map("v", "K", ":m '<-2<CR>gv=gv")

-- 批量替换
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ESC
map("i", "<C-c>", "<Esc>")

-- Tabs
map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>n", ":tabnew<CR>", opts)
map("n", "<leader>cr", ":BufferLineCloseRight<CR>", opts)
map("n", "<leader>cl", ":BufferLineCloseLeft<CR>", opts)
map("n", "<leader>co", ":BufferLineCloseOthers<CR>", opts)
-- map("n", "<leader>1", ":tabn 1<CR>", opts)
-- map("n", "<leader>2", ":tabn 2<CR>", opts)
-- map("n", "<leader>3", ":tabn 3<CR>", opts)
-- map("n", "<leader>4", ":tabn 4<CR>", opts)
-- map("n", "<leader>5", ":tabn 5<CR>", opts)
-- map("n", "<leader>6", ":tabn 6<CR>", opts)
-- map("n", "<leader>7", ":tabn 7<CR>", opts)
-- map("n", "<leader>8", ":tabn 8<CR>", opts)
-- map("n", "<leader>9", ":tabn 9<CR>", opts)
