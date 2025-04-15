-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " " -- is the character(s) for <leader>
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.number = true
opt.relativenumber = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = false -- Use spaces instead of tabs
opt.scrolloff = 8
opt.winminwidth = 5 -- Minimum window width

opt.undolevels = 10000
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
	opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
	opt.foldmethod = "expr"
	opt.foldtext = ""
else
	opt.foldmethod = "indent"
	opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0