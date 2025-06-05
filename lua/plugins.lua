-- lazy.nvim 插件路径
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 设置 lazy.nvim 插件
require("lazy").setup({
  -- 主题
  'folke/tokyonight.nvim',
  'sainnhe/gruvbox-material',
  -- 状态栏
  'nvim-lualine/lualine.nvim',

  -- 语法高亮
  'nvim-treesitter/nvim-treesitter',

  -- 文件图标
  'nvim-tree/nvim-web-devicons',

  -- LSP 配置
  'neovim/nvim-lspconfig',

  -- Mason 插件：安装和管理 LSP、格式化工具等
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  --补全
  'hrsh7th/nvim-cmp',  -- 主插件
  'hrsh7th/cmp-nvim-lsp',  -- LSP 补全源
  'hrsh7th/cmp-buffer',  -- 缓冲区补全源
  'hrsh7th/cmp-path',  -- 文件路径补全源
  'saadparwaiz1/cmp_luasnip',  -- Snippets 补全源
  'L3MON4D3/LuaSnip',  -- Snippet 引擎
  --括号
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  "nvim-tree/nvim-tree.lua",
  'numToStr/Comment.nvim',
  "EdenEast/nightfox.nvim",
})

