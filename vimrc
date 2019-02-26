" ------------------------------------------------------------------------------
" Vundle
" ------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" Powerline for vim
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"

" Arduino syntax
Plugin 'sudar/vim-arduino-syntax'

" Airline - lightweight status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2

" ------------------------------------------------------------------------------
" More powerline stuff
" ------------------------------------------------------------------------------
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
"set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Airline
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"set :AirlineTheme solarized
"let g:airline_solarized_bg='dark'


" ------------------------------------------------------------------------------
" My stuff
" ------------------------------------------------------------------------------
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set number
set tw=80
set colorcolumn=81
set cursorline
set ruler

syntax on
set background=dark
"let g:solarized_termtrans = 1
colorscheme dim

inoremap jk <ESC>

" backspace over everything in insert mode
set backspace=indent,eol,start

" Make moving between vim tabs easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make Y yank to end of line
nnoremap Y y$

" Autoremove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

