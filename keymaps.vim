function Keymap(mode, key, command)
    if a:mode == "m"
        let l:modetype = "map"
    endif

    if a:mode == "n"
        let l:modetype = "nnoremap"
    endif

    if a:mode == "i"
        let l:modetype = "inoremap"
    endif

    if a:mode == "v"
        let l:modetype = "vnoremap"
    endif

    if a:mode == "t"
        let l:modetype = "tnoremap"
    endif

    execute ':' . ' '. l:modetype . ' ' . a:key . ' ' . a:command
endfunction

" MODES:  m == map | i == insert | v == visual
let g:mapleader = " "

"_-_-_-_-_-_-_-_-_- -[MAP MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
call Keymap("m", "\eh", "^")                          " Go end line
call Keymap("m", "\el", "g_")                         " Go begginer line
call Keymap("m", "<F1>", "<CMD>source ~/.vimrc<CR>")  " Source vim config file

"_-_-_-_-_-_-_-_-_- -[NORMAL MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_-_
call Keymap("n", "<C-s>", "<CMD>w<CR>")               " Save buffer
call Keymap("n", "<leader>Q", "<CMD>q<CR>")           " Exit vim
call Keymap("n", "<leader>q", "<CMD>bdelete<CR>")     " Exit buffer

call Keymap("n", ">", ">>")                           " Indent
call Keymap("n", "<", "<<")                           " Indent

call Keymap("n", "<C-f>", "/")                        " Search mode
call Keymap("n", "<Esc>", "<CMD>nohlsearch<CR>")      " Remove search highligt

call Keymap("n", "dr", "<C-.>")                       " Do last action

call Keymap("n", "<Tab>", "<CMD>bnext<CR>")           " Next buffer
call Keymap("n", "<S-Tab>", "<CMD>bprevious<CR>")     " Previous buffer

call Keymap("n", "<C-h>", "<C-w>h")                   " Right window
call Keymap("n", "<C-l>", "<C-w>l")                   " Left window
call Keymap("n", "<C-k>", "<C-w>k")                   " Up Window
call Keymap("n", "<C-j>", "<C-w>j")                   " Bottom window

" Resize window
call Keymap("n", "<C-right>",  "<CMD>vertical resize +5<CR>")
call Keymap("n", "<C-left>", "<CMD>vertical resize -5<CR>")
call Keymap("n", "<C-up>", "<CMD>horizontal resize +5<CR>")
call Keymap("n", "<C-down>", "<CMD>horizontal resize -5<CR>")

call Keymap("n", "<leader>ff", "<CMD>Files<CR>")      " File search
call Keymap("n", "<leader>fb", "<CMD>Buffers<CR>")    " File search
call Keymap("n", "<leader>fg", "<CMD>Ag<CR>")         " Live grep

call Keymap("n", "<leader>x", '"+x')                  " Clipboard: Copy
call Keymap("n", "<leader>y", '"+y')                  " Clipboard: Paste
call Keymap("n", "<leader>p", '"+p')                  " Clipboard: Paste
call Keymap("n", "<leader>P", '"+P')                  " Clipboard: Cut

 " Open terminal
call Keymap("n", "<C-t>", '<CMD>below horizontal terminal<CR>')
"_-_-_-_-_-_-_-_-_- -[INSERT MODE]- _-_-_-_-_-_-_-_-_--_-_-_-_-

"_-_-_-_-_-_-_-_-_- -[VISUAL MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_--
call Keymap("v", "\ej", "<CMD>m+<CR>")
call Keymap("v", "\ek", "<CMD>m-2<CR>")

call Keymap("v", "<", "<gv")                          " Indent
call Keymap("v", ">", ">gv")                          " Indent

call Keymap("v", "<leader>x", '"+x')                  " Clipboard: Copy
call Keymap("v", "<leader>y", '"+y')                  " Clipboard: Paste
call Keymap("v", "<leader>p", '"+p')                  " Clipboard: Paste
call Keymap("v", "<leader>P", '"+P')                  " Clipboard: Cut

"_-_-_-_-_-_-_-_-_- -[TERMINAL MODE]- _-_-_-_-_-_-_-_-_-_-_-_-_--
call Keymap("t", "<Esc>", '<C-\><C-n>:q!<CR>')        " Close terminal

call Keymap("t", "<C-h>", '<C-w>h')
call Keymap("t", "<C-j>", '<C-w>j')
call Keymap("t", "<C-k>", '<C-w>k')
call Keymap("t", "<C-l>", '<C-w>l')
