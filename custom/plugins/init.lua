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

  -- 自动打开上次浏览位置
  {
    "farmergreg/vim-lastplace"
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

  -- -- LSP
  -- {
  --     "neovim/nvim-lspconfig",
  --     module = "lspconfig",
  --
  --     config = function()
  --        require "custom.plugins.lspconfig"
  --     end,
  --
  --     -- lazy load!
  --     setup = function()
  --        require("core.utils").packer_lazy_load "nvim-lspconfig"
  --        vim.defer_fn(function()
  --           vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
  --        end, 0)
  --     end,
  --     opt = true,
  -- },
  --
  -- -- CMP
  --    -- load luasnips + cmp related in insert mode only
  -- {
  --     "rafamadriz/friendly-snippets",
  --     event = "InsertEnter",
  -- },
  --
  -- {
  --    "hrsh7th/nvim-cmp",
  --    after = "friendly-snippets",
  --    config = function()
  --       require "custom.plugins.cmp"
  --    end,
  -- },
  --
  -- {
  --    "L3MON4D3/LuaSnip",
  --    wants = "friendly-snippets",
  --    after = "nvim-cmp",
  --    config = function()
  --       local luasnip = require "luasnip"
  --       luasnip.config.set_config {
  --          history = true,
  --          updateevents = "TextChanged,TextChangedI",
  --       }
  --       require("luasnip/loaders/from_vscode").load()
  --    end,
  -- },
  --
  -- {
  --    "saadparwaiz1/cmp_luasnip",
  --    after = "LuaSnip",
  -- },
  --
  -- {
  --    "hrsh7th/cmp-nvim-lua",
  --    after = "cmp_luasnip",
  -- },
  --
  -- {
  --    "hrsh7th/cmp-nvim-lsp",
  --    after = "cmp-nvim-lua",
  -- },
  --
  -- {
  --    "hrsh7th/cmp-buffer",
  --    after = "cmp-nvim-lsp",
  -- },
  --
  -- {
  --    "hrsh7th/cmp-path",
  --    after = "cmp-buffer",
  -- },
  --
  -- {
  --    "windwp/nvim-autopairs",
  --    after = "nvim-cmp",
  --    config = function()
  --       local autopairs = require "nvim-autopairs"
  --       local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  --
  --       autopairs.setup { fast_wrap = {} }
  --
  --       local cmp = require "cmp"
  --       cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  --    end,
  -- },
  --  -- CMP END
 }
