set expandtab
set softtabstop=-1
set tabstop=4
set shiftwidth=0

set number relativenumber

set autoindent
set smartindent

syntax on 

"floating windows colors
hi NormalFloat term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi Pmenu term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi PmenuSel term=None guifg=#80a0ff guibg=#333333 ctermfg=14 ctermbg=234

call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdcommenter'

Plug 'voldikss/vim-floaterm'

Plug 'justinmk/vim-sneak'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'
Plug 'rhysd/git-messenger.vim'

Plug 'lervag/vimtex'

Plug 'junegunn/goyo.vim'

Plug 'dense-analysis/ale'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'ryanoasis/vim-devicons'

Plug 'tikhomirov/vim-glsl'

Plug 'dag/vim-fish'

Plug 'joukevandermaas/vim-ember-hbs'

call plug#end()

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

"Statusbar powerline visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"vim-signify
highlight DiffAdd ctermfg=2 ctermbg=NONE
highlight DiffDelete ctermfg=1  ctermbg=NONE
highlight DiffChange ctermfg=4  ctermbg=NONE
highlight clear SignColumn

"vimtex
let g:tex_flavor = 'latex'
"let g:vimtex_view_method = 'mupdf'
"let g:vimtex_view_general_callback = 'RefreshPDF'

"function! RefreshPDF(status) abort
  "if a:status
    "call system('pkill -HUP mupdf')
  "endif
"endfunction

"augroup Vimtex
  "autocmd!
  "autocmd FileType tex :VimtexCompile
"augroup end

set guicursor=

nnoremap <esc> :noh<return><esc>

"ale
highlight ALEWarning ctermbg=8

nnoremap gd :ALEGoToDefinition<CR>
nnoremap gt :ALEGoToTypeDefinition<CR>
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"

let g:ale_linters = {'cpp' : ['clangd', 'clang-tidy'], 'tex' : ['chktex'], 'python' : ['pyls', 'flake8'], 'javascript' : ['eslint'], 'handlebars' : ['ember-template-lint']}
let g:ale_fixers = {'cpp' : ['clang-format'], 'c' : ['clang-format'], 'python' : ['black', 'isort'], 'javascript' : ['prettier', 'eslint'], 'tex' : ['latexindent']}
let g:ale_fix_on_save = 1

let g:ale_c_clangformat_options = "--style=\"{BasedOnStyle: llvm, IndentWidth: 4, PointerAlignment: Left}\""

let g:ale_cpp_clang_options = '--clang-tidy --clang-tidy-checks="*"'
"let g:ale_cpp_clangd_options = '--clang-tidy --clang-tidy-checks="
                                    "\ cppcoreguidelines-avoid-goto,
                                    "\ cppcoreguidelines-init-variables,
                                    "\ cppcoreguidelines-interfaces-global-init,
                                    "\ cppcoreguidelines-macro-usage,
                                    "\ cppcoreguidelines-narrowing-conversions,
                                    "\ cppcoreguidelines-no-malloc,
                                    "\ cppcoreguidelines-owning-memory,
                                    "\ cppcoreguidelines-pro-bounds-array-to-pointer-decay,
                                    "\ cppcoreguidelines-pro-constant-array-index,
                                    "\ cppcoreguidelines-pro-bounds-pointer-arithmetic,
                                    "\ cppcoreguidelines-pro-type-const-cast,
                                    "\ cppcoreguidelines-pro-type-cstyle-cast,
                                    "\ cppcoreguidelines-pro-type-member-init,
                                    "\ cppcoreguidelines-pro-type-reinterpret-cast,
                                    "\ cppcoreguidelines-pro-type-static-cast-downcast,
                                    "\ cppcoreguidelines-pro-type-union-access,
                                    "\ cppcoreguidelines-pro-type-vararg,
                                    "\ cppcoreguidelines-slicing,
                                    "\ cppcoreguidelines-special-member-functions,
                                    "\ google-build-using-namespace,
                                    "\ google-explicit-constructor,
                                    "\ google-global-names-in-headers,
                                    "\ google-readability-casting,
                                    "\ google-runtime-int,
                                    "\ readability-magic-numbers"'
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1

let g:ale_lint_on_text_changed = 'insert'

"miscellaneous
map <C-e> :q<CR>
