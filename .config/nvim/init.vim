set expandtab
set shiftwidth=4
set tabstop=4

set number relativenumber

set autoindent
set smartindent

syntax on 
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'

Plug 'chrisbra/Colorizer'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'

Plug 'lervag/vimtex'

Plug 'junegunn/goyo.vim'

Plug 'dense-analysis/ale'

Plug 'ycm-core/YouCompleteMe'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'ryanoasis/vim-devicons'

call plug#end()

"fzf
map <SPACE> :Files<CR>
map <A-s> :Ag<CR>
map <A-r> :Rg<CR>

"nerdtree
map <C-o> :NERDTreeToggle<CR>

"Colorizer
map <C-c> :ColorHighlight<CR>
map <C-d> :ColorClear<CR>

"goyo
let g:goyo_width = 150

nnoremap <C-g> :Goyo<cr>

"Statusbar powerline visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"vim-signify
highlight DiffAdd ctermfg=2 ctermbg=NONE
highlight DiffDelete ctermfg=1  ctermbg=NONE
highlight DiffChange ctermfg=4  ctermbg=NONE
highlight clear SignColumn

"vimtex
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

"YouCompleteMe
nnoremap gd :YcmCompleter GoToDefinition<CR>
nnoremap gl :YcmCompleter GoToDeclaration<CR>
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1

set guicursor=

nnoremap <esc> :noh<return><esc>

"ale
let g:ale_linters = {'cpp' : ['clang', 'clangtidy']}
"let g:ale_fixers = {'cpp' : ['clangtidy']}
let g:ale_cpp_clang_options = '-std=c++2a -Wall -Wextra -Wpedantic -Wshadow -fsanitize=address,undefined'
let g:ale_cpp_clangtidy_checks = [
            \ 'cppcoreguidelines-avoid-goto',
            \ 'cppcoreguidelines-init-variables',
            \ 'cppcoreguidelines-interfaces-global-init',
            \ 'cppcoreguidelines-macro-usage',
            \ 'cppcoreguidelines-narrowing-conversions',
            \ 'cppcoreguidelines-no-malloc',
            \ 'cppcoreguidelines-owning-memory',
            \ 'cppcoreguidelines-pro-bounds-array-to-pointer-decay',
            \ 'cppcoreguidelines-pro-constant-array-index',
            \ 'cppcoreguidelines-pro-bounds-pointer-arithmetic',
            \ 'cppcoreguidelines-pro-type-const-cast',
            \ 'cppcoreguidelines-pro-type-cstyle-cast',
            \ 'cppcoreguidelines-pro-type-member-init',
            \ 'cppcoreguidelines-pro-type-reinterpret-cast',
            \ 'cppcoreguidelines-pro-type-static-cast-downcast',
            \ 'cppcoreguidelines-pro-type-union-access',
            \ 'cppcoreguidelines-pro-type-vararg',
            \ 'cppcoreguidelines-slicing',
            \ 'cppcoreguidelines-special-member-functions',
            \ 'google-build-using-namespace',
            \ 'google-explicit-constructor',
            \ 'google-global-names-in-headers',
            \ 'google-readability-casting',
            \ 'google-runtime-int',
            \ 'readability-magic-numbers']
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1

"miscellaneous
map <C-e> :q<CR>
