-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.relativenumber = true

opt.cursorline = true

--apearence
opt.termguicolors = true
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"
--clipboard 
opt.clipboard = "unnamedplus"
