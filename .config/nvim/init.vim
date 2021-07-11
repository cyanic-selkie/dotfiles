" tabs
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

"miscellaneous
set number relativenumber

set guicursor=

nnoremap <esc> :noh<return><esc>

call plug#begin(stdpath('data') . '/plugged')

Plug 'dense-analysis/ale'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'preservim/nerdcommenter'

Plug 'vim-scripts/ReplaceWithRegister'

Plug 'vimwiki/vimwiki'

Plug 'easymotion/vim-easymotion'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-surround'

Plug 'tikhomirov/vim-glsl'

Plug 'lervag/vimtex'

Plug 'morhetz/gruvbox'

Plug 'metakirby5/codi.vim'

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'ray-x/lsp_signature.nvim'
Plug 'p00f/nvim-ts-rainbow'

call plug#end()

"colors
let g:gruvbox_italics = 1
colorscheme gruvbox

"sneak
let g:sneak#label = 1

"goyo
let g:goyo_width = 150
nnoremap <C-g> :Goyo<cr>

"statusbar powerline visuals
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

"vimwiki
let g:vimwiki_list = [{'path':'~/vimwiki'}]

"lua modules
:lua require('lsp')
:lua require('autocomplete')
:lua require('syntax')

"auto format on write
autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 100)

"ale fixers
let g:ale_fixers = {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'cpp' : ['clang-format'],
    \'python' : ['black', 'isort'],
    \'tex' : ['latexindent'],
    \'rust' : ['rustfmt'],
\}

let g:ale_python_black_options = "--experimental-string-processing"
let g:ale_python_isort_options = "-l 88 --tc --multi-line 3 --up -n --fgw 0"

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

"vimtex
let g:vimtex_view_method = 'zathura'

"telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap fr <cmd>Telescope lsp_references<cr>
nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap ca <cmd>Telescope lsp_code_actions<cr>

"tab hotkeys
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <Leader>n :tabe<CR>

"disable arrow keys
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

"disable Q
map Q <Nop>
