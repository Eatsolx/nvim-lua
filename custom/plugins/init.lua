return {
  -- 平滑滚动
  {
    "karb94/neoscroll.nvim",
     opt = true,
     config = function()
        require("neoscroll").setup()
     end,

     -- lazy loading
     setup = function()
       require("core.utils").packer_lazy_load "neoscroll.nvim"
     end,
  },

  -- 历史修改记录
  {
        "mbbill/undotree",
        opt = true,
        cmd = "UndotreeToggle",
  },

  -- 多光标
  {
    "mg979/vim-visual-multi",
    keys = "<C-n>",
  },

  -- 增删改引号
  {
    "tpope/vim-surround",
    keys = {"c", "d", "S"},
  },

  -- 快速选中
  {
    "gcmt/wildfire.vim",
    keys = "<CR>",
  },

  -- 代码格式化
  {
    "Chiel92/vim-autoformat",
    cmd = "Autoformat",
  },

  -- 快速分析启动时间
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },

  -- 编辑只读文件
  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },

  -- 现代任务系统
  {
    "skywind3000/asynctasks.vim",
    requires = "skywind3000/asyncrun.vim",
    cmd = {"AsyncTask", "AsyncTaskEdit"},
    opt = true
  },

  -- 函数列表
  {
    "liuchengxu/vista.vim",
    cmd = "Vista",
  },

  -- markdown预览
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    ft = "markdown",
  },

  -- 制作markdown表格
  {
    "dhruvasagar/vim-table-mode",
    cmd = "TableModeToggle",
  },

  -- 自动切换输入法
  {
    "lilydjwg/fcitx.vim",
    keys = {'i', 'a', 'I', 'A', 'c', 'o', 'O'},
  },

}
