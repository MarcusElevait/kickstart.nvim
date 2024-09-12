local options = {
  breakindent = true,
  clipboard = 'unnamedplus',
  cursorline = true,
  ignorecase = true,
  inccommand = 'split',
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  number = true,
  mouse = 'a',
  scrolloff = 10,
  showmode = false,
  signcolumn = 'yes',
  smartcase = true,
  splitbelow = true,
  splitright = true,
  timeoutlen = 300,
  undofile = true,
  updatetime = 250,
  autowrite = true,
  spell = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
