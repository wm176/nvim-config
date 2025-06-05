-- 安装和配置 nvim-cmp
local cmp = require'cmp'
cmp.setup({
  sources = {
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

