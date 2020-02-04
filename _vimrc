set langmenu=en_US.UTF-8
"if has("gui_running")
"    if has("gui_win32")
"        set guifont=DejaVuSansMono_Nerd_Font:h11:cANSI
"    endif
"endif
"language en

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
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'yggdroot/indentline'
Plugin 'luochen1990/rainbow'
Plugin 'ryanoasis/vim-devicons'

" Usefull behaviours
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'
Plugin 'farmergreg/vim-lastplace'
Plugin 'auxiliary/vim-layout'
Plugin 'pseewald/vim-anyfold'

" For html
Plugin 'alvan/vim-closetag'
Plugin 'gorodinskiy/vim-coloresque'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



set encoding=UTF-8
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
filetype indent on
set shiftwidth=4

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1

set laststatus=2
"set guifont=Source\ Code\ Pro\ for\ Powerline:h10:cANSI
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10:cANSI
let g:airline_powerline_fonts = 1
map <C-o> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:move_key_modifier = 'C'

" Rainbow braces
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Last place
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0

" For html
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_shortcut = '>'

" Folds
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
"set foldlevel=0 " Close all folds
set foldlevel=99 " Open all folds

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
