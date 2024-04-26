-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },

  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    -- window = {
    --   position = 'float',
    --   width = 0.35, -- or any other value you prefer
    --   height = 1, -- or any other value you prefer
    -- },
    filesystem = {
      filtered_items = {
        visible = true, -- Set to true to show files normally hidden
        hide_dotfiles = false, -- Set to false to show dotfiles
        hide_gitignored = false, -- Set to false to show .gitignored files
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
