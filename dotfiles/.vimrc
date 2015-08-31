"mars vim config

set nocompatible

"vundle config

filetype plugin indent off
syntax off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugins go here:
Plugin 'Rip-Rip/clang_complete'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'

"Plugin section end

call vundle#end()
filetype plugin indent on
syntax on

"config

set fileencodings=utf-8
set ffs=unix
set autoread
set history=500
set nomodeline
set backspace=indent,eol,start
set ruler
set showmatch
syntax enable
colorscheme default
set background=dark
set shiftwidth=4
set tabstop=4
set wrap
set number
set laststatus=2
set ignorecase
set hlsearch
set clipboard=unnamed
set wildmode=longest,list
set wildmenu
set timeoutlen=250

"easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"nerdtree config

autocmd vimenter * NERDTree
"open nerdtree with ctrl + n
map <C-n> :NERDTreeToggle<CR>
"close if only nerdtree is left"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"syntastic config

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"end

