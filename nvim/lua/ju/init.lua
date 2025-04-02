local opt = vim.opt

opt.number = true
opt.relativenumber = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.scrolloff = 8

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

require("ju.keymaps")
require("ju.lazy_init")

local augroup = vim.api.nvim_create_augroup
local mainGroup = augroup("ju", {})
