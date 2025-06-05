-- ~/.config/nvim/lua/plugins/treesitter.lua
require("nvim-treesitter.configs").setup({
  -- 确保安装的语言
  ensure_installed = {"cpp","python"},  -- 安装所有支持的语言，或者指定某些语言，如 {"python", "cpp", "lua"}

  -- 启用语法高亮
  highlight = {
    enable = true,  -- 启用语法高亮
    additional_vim_regex_highlighting = false,  -- 禁用 Vim 的语法高亮，避免与 Tree-sitter 冲突
  },

  -- 启用智能缩进
  indent = {
    enable = true,  -- 启用智能缩进
  },



  -- 启用彩虹括号
  rainbow = {
    enable = true,  -- 启用括号配对高亮
    extended_mode = true,  -- 高亮函数调用中的括号
    max_file_lines = nil,  -- 允许高亮的最大行数
  },

  -- 启用增量解析
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",  -- 初始化选择
      node_incremental = "<CR>",  -- 增量选择下一个节点
      scope_incremental = "<S-CR>",  -- 增量选择下一个作用域
      node_decremental = "<BS>",  -- 增量选择上一个节点
    },
  },

  -- 自动安装和更新解析器
  run = ":TSUpdate",  -- 安装后自动更新解析器
})

