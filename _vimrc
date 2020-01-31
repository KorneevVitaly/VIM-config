set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" For Vim appearance
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'yggdroot/indentline'
Plugin 'luochen1990/rainbow'

" Usefull behaviours
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'
Plugin 'farmergreg/vim-lastplace'
Plugin 'auxiliary/vim-layout'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"set encoding=UTF-8
set number
set nowritebackup
set nobackup
set shortmess-=S
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
colorscheme sublimemonokai
set cursorline

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1

set laststatus=2
map <C-o> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:move_key_modifier = 'C'

" Rainbow braces
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Last place
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0

"""""""""""""""""""""""""""""""""""""""
" let mouse wheel scroll file contents
"""""""""""""""""""""""""""""""""""""""
"if !has("gui_running")
"    set term=xterm
"    set mouse=a
"    " perhaps `nocompatible` is not required
"    set nocompatible
"endif
""""""""""""""""""""""""""""""""""""""
