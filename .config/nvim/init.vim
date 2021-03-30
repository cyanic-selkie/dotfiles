set expandtab
set softtabstop=-1
set tabstop=4
set shiftwidth=0

set number relativenumber

set autoindent
set smartindent

set nocompatible
filetype plugin on
syntax on

"floating windows colors
hi NormalFloat term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi Pmenu term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi PmenuSel term=None guifg=#80a0ff guibg=#333333 ctermfg=14 ctermbg=234

call plug#begin(stdpath('data') . '/plugged')

Plug 'ekalinin/Dockerfile.vim'

Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdcommenter'

Plug 'voldikss/vim-floaterm'

Plug 'vim-scripts/ReplaceWithRegister'

Plug 'vimwiki/vimwiki'

Plug 'easymotion/vim-easymotion'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'lervag/vimtex'

Plug 'junegunn/goyo.vim'

Plug 'dense-analysis/ale'

Plug 'tpope/vim-surround'

Plug 'ryanoasis/vim-devicons'

Plug 'tikhomirov/vim-glsl'

Plug 'dag/vim-fish'

Plug 'joukevandermaas/vim-ember-hbs'

Plug 'wellle/context.vim'

Plug 'rakr/vim-one'

Plug 'bfrg/vim-cpp-modern'

Plug 'metakirby5/codi.vim'

call plug#end() 

"context
let g:context_enabled = 0

"floatterm
let g:floaterm_keymap_toggle = '<Leader>t'

"sneak
let g:sneak#label = 1

"fzf
map <SPACE> :Files<CR>
map <A-s> :BLines<CR>
map <A-r> :Rg<CR>

"nerdtree
map <C-t> :NERDTreeToggle<CR>

"goyo
let g:goyo_width = 150

nnoremap <C-g> :Goyo<cr>

"statusbar powerline visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"vimtex
let g:tex_flavor = 'latex'

"ale
highlight ALEWarning ctermbg=8

nnoremap gd :ALEGoToDefinition<CR>

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
    \'cpp' : ['clangd', 'clang-tidy'],
    \'tex' : ['chktex'],
    \'python' : ['pyls', 'flake8'],
    \'javascript' : ['eslint'],
    \'handlebars' : ['ember-template-lint'],
    \'rust' : ['analyzer'],
    \}
let g:ale_fixers = {
    \'cpp' : ['clang-format'],
    \'c' : ['clang-format'],
    \'python' : ['black', 'isort'],
    \'javascript' : ['prettier', 'eslint'],
    \'tex' : ['latexindent'],
    \'rust' : ['rustfmt'],
    \}

let g:ale_c_clangformat_options = "--style=\"{BasedOnStyle: llvm, IndentWidth: 4, PointerAlignment: Left, ColumnLimit: 0}\""
let g:ale_cpp_clang_options = '--clang-tidy --clang-tidy-checks="*"'

let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'insert'

highlight clear SignColumn

"vimwiki
let g:vimwiki_list = [{'path':'~/vimwiki'}]

hi VimwikiHeader1 ctermfg=255 cterm=bold
hi VimwikiHeader2 ctermfg=200 cterm=bold
hi VimwikiHeader3 ctermfg=4 cterm=bold
hi VimwikiHeader4 ctermfg=11 cterm=bold
hi VimwikiHeader5 ctermfg=10 cterm=bold
hi VimwikiHeader6 ctermfg=8 cterm=bold

"miscellaneous
set guicursor=

nnoremap <esc> :noh<return><esc>

nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <Leader>n :tabe<CR>

nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

map Q <Nop>
