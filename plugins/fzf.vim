let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.*/*,bin/*}"'
" let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

let g:fzf_vim = {}

" Preview window
let g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'alt-p']

" [Buffers] Jump to the existing window if possible
let g:fzf_vim.buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_vim.commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Hide status line
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"FZF Buffer Delete
function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-s': 'vsplit',
    \ 'ctrl-d': function('s:delete_buffers'),
    \ }

