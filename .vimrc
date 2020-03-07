set expandtab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent

syntax on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'

call plug#end()

map <SPACE> :Files<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-e> :q<CR>
