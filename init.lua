vim.o.number = true
vim.cmd('syntax enable')
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.wrap = true
require('packer').startup(function(use)
  -- Packer 本身
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'hrsh7th/nvim-cmp'  -- 核心补全插件
  use 'hrsh7th/cmp-nvim-lsp'  -- LSP 补全源
  use 'hrsh7th/cmp-buffer'  -- 缓冲区补全源
  use 'hrsh7th/cmp-path'  -- 文件路径补全源
  use 'saadparwaiz1/cmp_luasnip'  -- LuaSnip 补全源
  use 'L3MON4D3/LuaSnip'  -- Snippet 插件
  -- LSP 插件
  use 'neovim/nvim-lspconfig'       -- LSP 配置
  use 'williamboman/mason.nvim'     -- 管理 LSP、DAP 插件
  use 'williamboman/mason-lspconfig.nvim' -- mason LSP 配置
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
}
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-autopairs'

end)
-- 启用 tokyonight 主题
vim.cmd("colorscheme tokyonight")
vim.g.tokyonight_style = "night"

