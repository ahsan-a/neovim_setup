set nocompatible

call plug#begin('~/AppData/Local/nvim/plugged')

" ----- Editor customisation -----
Plug 'vim-airline/vim-airline'
" Rainbow brackets
Plug 'luochen1990/rainbow'
Plug 'arcticicestudio/nord-vim'
" Discord RPC
Plug 'andweeb/presence.nvim'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'ryanoasis/vim-devicons'

"Language pack
Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'
"Accidental whitespace
Plug 'ntpeters/vim-better-whitespace'

" ----- Utilities -----
"gcc to comment line
Plug 'tpope/vim-commentary'
"easily show git statuses
Plug 'airblade/vim-gitgutter'
"(), '' etc.
Plug 'tpope/vim-surround'

" Linter
Plug 'dense-analysis/ale'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"auto pairs
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-surround'

call plug#end()
filetype plugin indent on

" ----- Plugin Setup -----
" -- gitgutter --
let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'

" -- nerdtree --
nmap <silent> <leader>t :NERDTree<CR>

" -- Rainbow Brackets --
let g:rainbow_active = 1

" -- Airline --
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1 "enable the top statusbar at all times

" -- ale --
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'python': ['autopep8', 'black'],
\   'markdown': ['prettier']
\}
let g:ale_linters = {
\   'markdown': ['writegood'],
\}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --use-tabs true --arrow-parens avoid'

" " -- coc --
set pumheight=20
inoremap <silent><expr> <c-space> coc#refresh()
nmap <F2> <Plug>(coc-rename)

inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "\<S-Tab>"

" -- discord RPC --
let g:presence_neovim_image_text = "Neovim"

" -- auto pairs--
let g:AutoPairsMapSpace = 0
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '<':'>', '*':'*'}

" ----- Looks -----
set background=dark
colorscheme nord
set shiftwidth=4
set tabstop=4

" ----- Editor Customisation -----
set backspace=indent,eol,start
set number
set ruler
set mouse=a
set shell=powershell
set formatoptions-=cro
set wrap linebreak nolist
" ctrls etc
imap <C-s> <Esc>:w<CR>a
imap <C-BS> <C-W>
nmap <c-s> :w<CR>
nmap <c-o> $a<CR>

" Markdown spellcheck
autocmd FileType markdown setlocal spell spelllang=en_gb

syntax on
