local bufferline = require('bufferline')
bufferline.setup {
  options = {
    mode = "buffers", -- 设置为"tabs"只显示tab页
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
    end,
    -- 左侧让出 nvim-tree 的位置
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }},
    numbers = "buffer_id", --"none" | "ordinal" | "buffer_id" | "both"
    truacate_names = true, -- 是否截断标签名
    tab_size = 18,
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    color_icons = true,
    diagnostics_update_in_insert = true,
    max_name_length = 18,
    max_prefix_length = 15, -- 当buffer去重时使用的前缀
  }
}
