return {
  -- Themes
  {'Mofiqul/dracula.nvim'},

  -- nvim-tree
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons',
    -- cmd = 'NvimTreeToggle',
    event = "VeryLazy",
    config = function()
      require "plugins.plugin-config.nvim-tree"
    end,
  },

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = 'kyazdani42/nvim-web-devicons',
    event = "VeryLazy",
    config = function()
      require "plugins.plugin-config.bufferline"
    end,
  },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    config = function()
      require "plugins.plugin-config.lualine"
    end,
  },

  -- 平滑滚动
  {
    'karb94/neoscroll.nvim',
    -- keys = {"∆", "˚", "<c-b>", "<c-f>","<c-y>", "<c-e>", "zt", "zz", "zb"},
    event = "VeryLazy",
    config = function()
      require "plugins.plugin-config.neoscroll"
    end,
  },

  -- 历史修改记录
  {
    'mbbill/undotree',
    lazy = false,
    config = function()
      require "plugins.plugin-config.undotree"
    end,
  },

  -- 多光标
  {
    'mg979/vim-visual-multi',
    event = "VeryLazy",
    -- keys = "<c-n>",
  },

  -- 增删改引号
  {
    'tpope/vim-surround',
    event = "VeryLazy",
    -- keys = {"c", "d", "s"},
  },

  -- 快速选中
  {
    'gcmt/wildfire.vim',
    event = "VeryLazy",
    -- keys = "<cr>",
  },

  -- 快速分析启动时间
  {
    'dstein64/vim-startuptime',
    event = "VeryLazy",
    -- cmd = "startuptime",
  },

  -- 编辑只读文件
  {
    'lambdalisue/suda.vim',
    event = "VeryLazy",
    -- cmd = "sudawrite",
  },

  -- 现代任务系统
  {
    'skywind3000/asynctasks.vim',
    event = "VeryLazy",
    -- requires = "skywind3000/asyncrun.vim",
    -- cmd = {"asynctask", "asynctaskedit"},
    enabled = false,
  },

  -- 函数列表
  {
    'liuchengxu/vista.vim',
    event = "VeryLazy",
    -- cmd = "vista",
  },

  -- markdown预览
  {
    'iamcco/markdown-preview.nvim',
    run = "cd app && yarn install",
    ft = "markdown",
  },

  -- 制作markdown表格
  {
    'dhruvasagar/vim-table-mode',
    ft = "markdown",
    -- cmd = "tablemodetoggle",
  },

  -- tmux
  {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    -- keys = {"<c-h>", "<c-j>", "<c-k>", "<c-l>"},
    config = function()
      require "plugins.plugin-config.tmux"
    end,
  },

 -- typst
  {
    'kaarmu/typst.vim',
    ft = 'typst',
    -- lazy=false,
    event = "VeryLazy",
  },

 -- lsp
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      require "plugins.plugin-config.lsp"
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
    -- nvim-cmp
    'hrsh7th/cmp-nvim-lsp', -- { name = nvim_lsp }
    'hrsh7th/cmp-buffer',   -- { name = 'buffer' },
    'hrsh7th/cmp-path',     -- { name = 'path' }
    'hrsh7th/cmp-cmdline',  -- { name = 'cmdline' }
    -- lspkind
    'onsails/lspkind-nvim',
    -- vsnip
    'hrsh7th/cmp-vsnip',    -- { name = 'vsnip' }
    'hrsh7th/vim-vsnip',
    'rafamadriz/friendly-snippets',
    },
    -- lazy = false,
    event = "InsertEnter",
  },

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
  },

  {
    "jinzhongjia/LspUI.nvim",
    branch = "main",
    event = "InsertEnter",
    -- config = function()
    --     require("LspUI").setup({
    --     -- config options go here
    -- })
    -- end,
  },

}
