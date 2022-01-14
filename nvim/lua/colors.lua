vim.g.lightline = {
  colorscheme = 'horizon',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'fugitive#head' },
}

vim.g.tokyonight_style = "night"
vim.cmd[[colorscheme horizon]]
