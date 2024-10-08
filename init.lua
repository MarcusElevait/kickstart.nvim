require 'custom.plugins.keymaps'
require 'custom.plugins.general-options'
require 'custom.plugins.autocommands'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  'nvim-tree/nvim-web-devicons',
  require 'custom.plugins.commentstring',
  require 'custom.plugins.markdown-viewer',
  require 'custom.plugins.dashboard',
  require 'custom.plugins.code-editing',
  require 'custom.plugins.debug',
  require 'custom.plugins.indent_line',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.neo-tree',
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.telescope',
  require 'custom.plugins.which-key',
  require 'custom.plugins.autocompletion',
  require 'custom.plugins.autoformat',
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.lazygit',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.mini-nvim',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.colorscheme',
  require 'custom.plugins.lsp-config',
  -- { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
