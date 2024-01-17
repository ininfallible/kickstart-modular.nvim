--Set highlight on search
--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

-- tabs are 2 spaces wide
vim.o.tabstop = 2
vim.o.shiftwidth = 2

--Column on line 80
vim.opt.colorcolumn = "81"
-- 238 is 27% gray
--  vim.api.nvim_set_hl(0, 'ColorColumn' , {ctermbg = 238})
vim.api.nvim_set_hl(0, 'ColorColumn' , {ctermbg = 238})

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Set colorscheme
-- vim.o.termguicolors = false

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.api.nvim_set_hl(0, 'NormalFloat' , {fg = "LightGray"})

-- TELEKASTEN HIGHLIGHTS
vim.api.nvim_set_hl(0, 'tkLink' , {ctermfg = "Blue", bold = true, underline = true})
vim.api.nvim_set_hl(0, 'tkBrackets' , {ctermfg = "Gray"})
vim.api.nvim_set_hl(0, 'tkHighlight' , {ctermbg = "Yellow", ctermfg = "Black", bold = true})
vim.api.nvim_set_hl(0, 'tkTag' , {ctermfg = "LightGreen", underline = true})
vim.api.nvim_set_hl(0, 'CalNavi', {link = 'CalRuler'})

vim.o.fillchars = 'vert: ,horiz: ,eob: '
vim.api.nvim_set_hl(0, 'LineNr' , {ctermfg = 238})
vim.api.nvim_set_hl(0, 'VertSplit' , {ctermbg = 238})
vim.api.nvim_set_hl(0, 'HorizSplit' , {ctermbg = 238})
vim.api.nvim_set_hl(0, 'TabLineFill' , {ctermbg = 238})
vim.api.nvim_set_hl(0, 'TabLine' , {ctermbg = 238, ctermfg = "Gray"})
vim.api.nvim_set_hl(0, 'TabLineSel' , {ctermbg = "NONE", ctermfg = "Yellow", bold = true})

-- set text width to 80 chars
vim.o.textwidth = 80

-- vim: ts=2 sts=2 sw=2 et
