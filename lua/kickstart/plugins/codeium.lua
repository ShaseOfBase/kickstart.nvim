local M = {}

function M.setup()
  require('lazy').setup {
    ['Exafunction/codeium.nvim'] = {
      dependencies = {
        'nvim-lua/plenary.nvim',
        'hrsh7th/nvim-cmp',
      },
      config = function()
        require('codeium').setup {}
      end,
    },
  }
end

return M
