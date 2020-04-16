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

Plug 'lervag/vimtex'

Plug 'junegunn/goyo.vim'

call plug#end()

"Filesystem
map <SPACE> :Files<CR>
map <C-n> :NERDTreeToggle<CR>

"Toggle hex color highlighting
map <C-c> :ColorHighlight<CR>
map <C-d> :ColorClear<CR>

"Misc helpers
map <C-e> :q<CR>

"Goyo
let g:goyo_width = 150

nnoremap <C-g> :Goyo<cr>

"Statusbar powerline visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"Gitgutter
highlight DiffAdd ctermfg=2 ctermbg=NONE
highlight DiffDelete ctermfg=1  ctermbg=NONE
highlight DiffChange ctermfg=4  ctermbg=NONE

"Vimtex
let g:vimtex_view_general_callback = 'RefreshPDF'

function! RefreshPDF(status) abort
  if a:status
    call system('pkill -HUP mupdf')
  endif
endfunction

augroup Vimtex
  autocmd!
  autocmd FileType tex :VimtexCompile
augroup end
