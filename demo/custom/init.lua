local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
   -- use {
   --     "folke/which-key.nvim"
   --  }
 end)

-- 添加一些init配置
require "custom.custom_init"
-- 按键映射
require "custom.custom_mappings"
