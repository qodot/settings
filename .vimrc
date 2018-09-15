let g:python3_host_prog = '/Users/qodot/.pyenv/shims/python'

" Vim-Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mileszs/ack.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/goyo.vim'
Plug 'shime/vim-livedown'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'posva/vim-vue'

Plug 'kaicataldo/material.vim'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on

" Theme
syntax enable
if (has("termguicolors"))
    set termguicolors
endif

" let g:seoul256_background = 235
" colorscheme seoul256

colorscheme material

" Visual
set number
set title
set ruler
set showcmd
set wildmenu
set wildmode=list:longest,full
set visualbell
set cursorline
set colorcolumn=80
set mouse=a
set guioptions=a
set splitright
set splitbelow
set scrolloff=999
set noshowmode

" Format Confing
set list
set listchars=space:·,tab:->,trail:.
set formatoptions=cqrt

" Tab Config
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set smartindent

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

" Key Config
set backspace=indent,eol,start

" Search Config
set hlsearch
set incsearch
set ignorecase
set smartcase

" ETC Config
set autoread
set history=1000
set undolevels=1000
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8

" Key Bindings
map <C-p> :FZF <CR>
map <C-s> :Ack! "\b<cword>\b" <CR>
nmap <Leader>w :w<CR>
map <C-c> <Esc>
imap <C-c> <Esc>
vmap <C-c> <Esc>

" nerdtree
" autocmd VimEnter * NERDTree .
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 1

" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" neomake
call neomake#configure#automake('w')
call neomake#configure#automake('nw', 750)
call neomake#configure#automake('rw', 1000)

" lightline
let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ }
