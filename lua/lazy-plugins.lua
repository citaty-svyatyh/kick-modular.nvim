-- [[ Setup lazy plugin manager ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
--
require('lazy').setup({
    -- NOTE: First, some plugins that don't require any configuration
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    -- NOTE: This is where your plugins related to LSP can be installed.
    --  The configuration is done below. Search for lspconfig to find it below.
    {
      -- LSP Configuration & Plugins
      'neovim/nvim-lspconfig',
      dependencies = {
        -- Automatically install LSPs to stdpath for neovim
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        -- Additional lua configuration, makes nvim stuff amazing!
        'folke/neodev.nvim',
      },
    },
    {
      -- Autocompletion
      'hrsh7th/nvim-cmp',
      dependencies = {
        -- Snippet Engine & its associated nvim-cmp source
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        -- Adds LSP completion capabilities
        'hrsh7th/cmp-nvim-lsp',
        -- Adds a number of user-friendly snippets
        'rafamadriz/friendly-snippets',
      },
    },
    -- Плагин для показа всплывающего меню со всякими там командами
    { 'folke/which-key.nvim',  opts = {} },
    {
      -- Add indentation guides even on blank lines
      'lukas-reineke/indent-blankline.nvim',
      -- Enable `lukas-reineke/indent-blankline.nvim`
      -- See `:help ibl`
      main = 'ibl',
      opts = {},
    },
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
    -- Fuzzy Finder (files, lsp, etc)
    {
      'nvim-telescope/telescope.nvim',
      branch = '0.1.x',
      dependencies = {
        'nvim-lua/plenary.nvim',
        -- Fuzzy Finder Algorithm which requires local dependencies to be built.
        -- Only load if `make` is available. Make sure you have the system
        -- requirements installed.
        {
          'nvim-telescope/telescope-fzf-native.nvim',
          -- NOTE: If you are having trouble with this installation,
          --       refer to the README for telescope-fzf-native for more instructions.
          build = 'make',
          cond = function()
            return vim.fn.executable 'make' == 1
          end,
        },
      },
    },
    -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
    --       These are some example plugins that I've included in the kickstart repository.
    --       Uncomment any of the lines below to enable them.
    require 'kickstart.plugins.autoformat',
    -- require 'kickstart.plugins.debug',
    -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
    --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
    --    up-to-date with whatever is in the kickstart repo.
    --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
    --
    { import = 'custom.plugins' },
  },
  {}
)

-- vim: ts=2 sts=2 sw=2 et
