set expandtab
set shiftwidth=4
set tabstop=4

set number relativenumber

set autoindent
set smartindent

syntax on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'chrisbra/Colorizer'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

call plug#end()

map <SPACE> :Files<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-e> :q<CR>
map <C-c> :ColorHighlight<CR>
map <C-d> :ColorClear<CR>

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

highlight DiffAdd ctermfg=2 ctermbg=NONE
highlight DiffDelete ctermfg=1  ctermbg=NONE
highlight DiffChange ctermfg=4  ctermbg=NONE
