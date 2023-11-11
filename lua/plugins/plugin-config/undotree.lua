if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand('~/.undodir')

    -- 如果目标路径不存在，则创建对应的文件夹
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", 0700)
    end

    vim.o.undodir = target_path
    vim.o.undofile = true
end

-- 配置Undotree插件
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_TreeNodeShape = '▸'
vim.g.undotree_WindowLayout = 2
