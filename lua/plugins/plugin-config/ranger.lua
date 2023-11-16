local ranger_nvim = require("ranger-nvim")
ranger_nvim.setup({
  enable_cmds = false,
  replace_netrw = false,
  keybinds = {
    ["ov"] = ranger_nvim.OPEN_MODE.vsplit,
    ["oh"] = ranger_nvim.OPEN_MODE.split,
    ["ot"] = ranger_nvim.OPEN_MODE.tabedit,
    ["or"] = ranger_nvim.OPEN_MODE.rifle,
  },
  ui = {
    border = "single",
    height = 0.7,
    width = 0.7,
    x = 0.5,
    y = 0.5,
  }
})

