-- 设置 Leader 键为 ',' 
vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
-- 将 Leader + q 映射为 :wq
vim.api.nvim_set_keymap('n', '<Leader>q', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>v', 'ggVG', { noremap = true,silent = true})
-- 将 Leader + d 映射为编译并运行 C++ 文件，且将输出显示在左侧终端
vim.api.nvim_set_keymap(
  'n',                               -- 在普通模式下 (normal mode)
  '<Leader>d',                       -- 键位绑定：按下 `<Leader>d` 时触发
  ':w | vsplit | terminal g++ % -o %:r && %:r.exe<CR>',  -- 添加 `:w` 保存文件，之后执行其他操作
  { noremap = true, silent = true }   -- 配置：`noremap` 防止递归映射，`silent` 防止命令行输出
)
vim.api.nvim_set_keymap('n','<Leader>e',':NvimTreeOpen<CR>',{noremap = true})
-- 启动调试的快捷键映射
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
        \ '#define pii pair<int,int>',
        \ '#define vpii vector<pair<int,int> >',
        \ '#define debug(x) cout << #x << "=" << x << "\n";',
        \ 'inline int r(){int x;cin >> x;return x;}',
        \ ])
    normal! Go
endfunction
]])
