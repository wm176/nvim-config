-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
vim.g.mapleader = ","

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('i','jk','<Esc>',opts)
vim.keymap.set('n','<leader>q',':wq<CR>',opts)
vim.keymap.set('n','<leader>v','ggVG',opts)
vim.keymap.set('n','<leader>e',':NvimTreeToggle<CR>',opts)

vim.api.nvim_set_keymap('n', '<leader>i', ':call InsertSnippet()<CR>', { noremap = true, silent = true })

-- 定义 InsertSnippet 函数
vim.cmd([[
function! InsertSnippet()
    normal! ggO
    call setline(1, [
        \ '#include <bits/stdc++.h>',
        \ 'using namespace std;',
        \ '#define ll long long',
        \ '#define f(i,a,b) for(int i = (a);i <= (b);i ++)',
        \ '#define g(i,a,b) for(int i = (a);i >= (b);i --)',
        \ '#define all(x) x.begin(),x.end()',
        \ '#define vi vector<int>',
        \ '#define boost ios::sync_with_stdio(0),cin.tie(0)',
        \ '#define debug(x) cout << #x << "=" << x << "\n";',
        \ 'inline int r(){int x;cin >> x;return x;}',
        \ ])
    normal! Go
endfunction
]])

vim.api.nvim_set_keymap(
  'n',                               -- 在普通模式下 (normal mode)
  '<Leader>d',                       -- 键位绑定：按下 `<Leader>d` 时触发
  ':w | vsplit | terminal g++ % -o %:r && %:r.exe<CR>',  -- 添加 `:w` 保存文件，之后执行其他操作
  { noremap = true, silent = true }   -- 配置：`noremap` 防止递归映射，`silent` 防止命令行输出
)
