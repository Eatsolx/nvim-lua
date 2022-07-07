-- 设置屏幕中间竖条
-- vim.o.colorcolumn = "130"

-- 不复制到系统剪切板
vim.o.clipboard=""

-- 禁用多光标警告
vim.g.VM_show_warnings = 0

-- 设置asynctasks窗口排版
vim.g.asynctasks_term_pos = 'bottom'
vim.g.asynctasks_term_rows = 15

-- vim-table-mode更改为markdown语法
vim.g.table_mode_corner='|'

-- 自动切换输入法
vim.api.nvim_create_autocmd(
  { "InsertLeave" },
  { pattern = "*", command = ":silent !fcitx5-remote -c"}
)
vim.api.nvim_create_autocmd(
  { "BufCreate" },
  { pattern = "*", command = ":silent !fcitx5-remote -c"}
)
vim.api.nvim_create_autocmd(
  { "BufEnter" },
  { pattern = "*", command = ":silent !fcitx5-remote -c"}
)
vim.api.nvim_create_autocmd(
  { "BufLeave" },
  { pattern = "*", command = ":silent !fcitx5-remote -c"}
)

-- 打开时自动定位到上次关闭位置
vim.api.nvim_create_autocmd(
  { "BufReadPost" },
  {pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)
