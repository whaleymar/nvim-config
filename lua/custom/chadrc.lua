---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  --   theme = "ayu_dark",
  --   theme_toggle = { "ayu_dark", "one_light" },
  --
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"
vim.opt_local.formatoptions:remove "c"
vim.opt_local.formatoptions:remove "r"
vim.opt_local.formatoptions:remove "o"
return M
