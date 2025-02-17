-- 安装和配置 nvim-cmp
local cmp = require'cmp'
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

-- 设置 clangd 作为 C++ 的 LSP 服务器
require'lspconfig'.clangd.setup({
  capabilities = require'cmp_nvim_lsp'.default_capabilities(),
})

-- 启用 mason 来自动安装和管理 LSP
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'clangd' },
})

-- 设置快捷键
vim.api.nvim_set_keymap('n', '<C-Space>', [[compe#complete()]], {expr = true, noremap = true})

