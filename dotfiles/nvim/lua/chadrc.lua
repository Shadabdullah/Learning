-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type  ChadrcConfig

local M = {}

M.ui = {
  theme = "ayu_dark",

  hl_override = {
  	["@comment"] = {bg = 'transparent',fg = 'cyan'  },

  }
}

return M
