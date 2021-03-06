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

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

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

" Airline
let g:airline#extensions#tabline#formatter = 'default'

" YouCompleteMe
" Close function parameter pop-up window after exiting insert mode
let g:ycm_autoclose_preview_window_after_insertion = 1


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

