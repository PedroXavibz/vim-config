call plug#begin()
" File explorer 
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Auto-complete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Snips
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Sytanx highlight
Plug 'sheerun/vim-polyglot'

" Comments
Plug 'tpope/vim-commentary'

call plug#end()

source $VIM_DIR/plugins/nerdtree.vim
source $VIM_DIR/plugins/fzf.vim
source $VIM_DIR/plugins/lsp.vim
source $VIM_DIR/plugins/asyncomplete.vim
source $VIM_DIR/plugins/term.vim
" source $VIM_DIR/plugins/vsnip.vim
