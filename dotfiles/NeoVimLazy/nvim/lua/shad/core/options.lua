local opt = vim.opt 
--line numbers
opt.relativenumber = true
opt.number = true 
-- tabs and indentations 
opt.tabstop= 2
opt.shiftwidth = 2
opt.expandtab =true 
opt.autoindent= true

--line wrapping
opt.wrap = false 

-- cases 
opt.ignorecase = true
opt.smartcase = true 

-- cursor line

opt.cursorline = true 

--apearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"
--clipboard 
opt.clipboard = "unnamedplus"
-- split windows 

opt.splitbelow = true
opt.splitright = true
opt.iskeyword = vim.o.iskeyword .. ",-"
