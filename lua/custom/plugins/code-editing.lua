return {
  -- converts normal string to strings holding a variable, e.g. python f string
  {
    'chrisgrieser/nvim-puppeteer',
    dependencies = 'nvim-treesitter/nvim-treesitter',
  },
  {
    'danymat/neogen',
    opts = true,
    keys = {
      {
        '<leader>a',
        function()
          require('neogen').generate()
        end,
        desc = 'Add Docstring',
      },
    },
  },
}
