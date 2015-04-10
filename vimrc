" Vundle plugin manager boilerplate
" BEGIN
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Plugins
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'guns/vim-clojure-static'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'skalnik/vim-vroom'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-misc'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'endel/vim-github-colorscheme'
Plugin 'Lokaltog/vim-distinguished'
call vundle#end()

" alternate leader key: , instead of \
let mapleader = ","
let g:mapleader = ","

" Settings
set scrolloff=8
set number
set relativenumber
set shell=zsh
colorscheme distinguished

syntax enable
filetype plugin indent on
set nocompatible
set wildmenu
set showmode
set laststatus=2
set noswapfile
set hidden
set nobackup
set autoread
" Search
set ignorecase
set smartcase
set incsearch
" indentation rules
set smartindent " Auto indent
set expandtab " use spaces as tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2

" Mappings
nnoremap j gj
nnoremap k gk

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap H ^
vnoremap H ^

nnoremap L g_
vnoremap L g_

" this helps with split navigation
nnoremap <leader>w <c-w>

" code completion in insert mode
inoremap <leader><leader> <C-n>
inoremap <leader>. <C-p>

" tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tv :tabnew ~/.vim/vimrc<CR>
nnoremap <leader>ts :tabnew ~/.vim/bundle/vim-snippets/snippets<CR>

" NERDtree
nnoremap <leader>n :NERDTreeToggle<CR>

" Ruby
nnoremap <leader>r :! ruby %<CR>

" Pry
nnoremap <leader>p :! pry<CR>
nnoremap <leader>P :! pry -r %<CR>

" go into haskell repl with current file loaded
nnoremap <leader>g :! ghci %<CR>

" source vimrc
nnoremap <leader>R :source ~/.vim/vimrc<CR>

" Easy Align Mappings
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Eval whole file (clojure, vim-fireplace)
nnoremap <leader>E :%Eval<CR>

"tabs 
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>th gT
nnoremap <leader>tl gt
nnoremap <leader>tH :tabm -1<CR>
nnoremap <leader>tL :tabm +1<CR>

" Syntastic
nnoremap <leader>se :Errors<CR>
nnoremap <leader>sr :SyntasticReset<CR>
