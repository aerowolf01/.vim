syntax enable
filetype plugin indent on

" GENERAL CONFIGURATION
" ---------------------
set background=dark
set nocompatible " disable vi compatability
set history=1000
set autoread
set ignorecase
set smartcase
set noswapfile
set clipboard+=unnamed " Yanks go on clipboard instead
set ruler " Ruler on
set number " put line numbers on the side
set showmode

set wildmenu
set listchars=tab:▸\ ,eol:¬ " set tab chars to ▸ and end of line chars to ¬

" Scroll settings
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Indentation options
set noexpandtab
set smartindent

" make sure softtabstob, tabstop, and shiftwidth are =
set softtabstop=4
set tabstop=4
set shiftwidth=4
" ################################################################################


" KEY MAPPINGS
" ------------

" disable arrow keys when in command or insert mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" ################################################################################

" PLUGIN CONFIGURATION
" --------------------

" Pathogen
execute pathogen#infect()

" ################################################################################

" ???
" ---

" set hidden " automatically make hidden buffers

" set shortcuts for window navigation
" Commented out because my .screenrc replaces Ctrl + a with Ctrl + j
"map <C-k> <C-w>k
"map <C-j> <C-w>j
"map <C-h> <C-w>h
"map <C-l> <C-w>l
