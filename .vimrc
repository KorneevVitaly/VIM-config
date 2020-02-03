set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" For syntax and code analize
Plugin 'valloric/youcompleteme'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
"Plugin 'vim-syntastic/syntastic'

" For Vim appearance
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/nerdtree'
Plugin 'yggdroot/indentline'
Plugin 'luochen1990/rainbow'

" Usefull behaviours
Plugin 'jiangmiao/auto-pairs'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'
Plugin 'auxiliary/vim-layout'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'farmergreg/vim-lastplace'

" For html
Plugin 'alvan/vim-closetag'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'turbio/bracey.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=UTF-8
set number
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
"colorscheme ron
colorscheme sublimemonokai
set cursorline
filetype indent on
set shiftwidth=4

set tags=tags

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1

" -- Custom script files --
" My Shebang header template
source ~/.vim/customautoheadfiles.vim
" My comment line shortcuts
source ~/.vim/vcomments.vim
map <C-_> :call Comment()<CR>
map <C-?> :call Uncomment()<CR>

" Other plugins settings
set laststatus=2
map <C-o> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:move_key_modifier = 'C'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

" ALE
let g:ale_linters = {'python': ['pycodestyle', 'pyflakes', 'pylint', 'flake8', 'mypy']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_completion_enabled = 0

" vim-python-pep8-indent
let g:python_pep8_indent_multiline_string = -2
let g:python_pep8_indent_hang_closing = 1

" indentline 
"let g:indentLine_setColors = 0

" Rainbow braces
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" For html
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_shortcut = '>'


" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
