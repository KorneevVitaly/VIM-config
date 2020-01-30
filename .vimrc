set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'ErichDonGubler/vim-sublime-monokai'

Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/nerdtree'

Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
syntax on
set expandtab
set tabstop=4
set incsearch
set foldenable
set mouse=a
set backspace=indent,eol,start
set completeopt-=preview
set wrap linebreak nolist
"set textwidth=80
"colorscheme ron
colorscheme sublimemonokai
set cursorline

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv=1

" My comment line shortcuts
set laststatus=2
source ~/.vim/vcomments.vim
map <C-_> :call Comment()<CR>
map <C-?> :call Uncomment()<CR>

" Other plugins settings
map <C-o> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:move_key_modifier = 'C'


