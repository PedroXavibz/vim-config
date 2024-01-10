call Keymap("n", "<C-n>", "<CMD>NERDTreeToggle<CR>")

let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1
let g:NERDTreeWinSize = 25

let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapChangeRoot = 'L'

let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapUpdir = 'H'

let g:NERDTreeMapToggleHidden = '<C-h>'

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
