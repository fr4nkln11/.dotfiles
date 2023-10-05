vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2

vim.opt.mousemoveevent = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"

vim.opt.list = true
vim.opt.listchars = {
  nbsp = "¬",
  tab = "»·",
  trail = "·",
  extends = ">"
}

vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}
