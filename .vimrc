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
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" For Vim appearance
Plugin 'ErichDonGubler/vim-sublime-monokai'
Plugin 'fatih/molokai'
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'enricobacis/vim-airline-clock'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'yggdroot/indentline'
Plugin 'sheerun/vim-polyglot'
Plugin 'luochen1990/rainbow'
Plugin 'chr4/nginx.vim'

" Usefull behaviours
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'
Plugin 'auxiliary/vim-layout'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'farmergreg/vim-lastplace'
Plugin 'pseewald/vim-anyfold'
Plugin 'wesQ3/vim-windowswap'
Plugin 'KabbAmine/vCoolor.vim'
"Plugin 'junegunn/fzf'
Plugin 'majutsushi/tagbar'
"Plugin 'ctrlpvim/ctrlp.vim'

" For html
Plugin 'alvan/vim-closetag'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'turbio/bracey.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
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
"colorscheme sublimemonokai
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set cursorline
filetype indent on
set shiftwidth=4
set splitbelow
set splitright
autocmd CursorMoved * exe printf('match WildMenu /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"let g:minimap_highlight='Visual'

set tags=tags

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1

set guifont=DejaVuSansMono\ Nerd\ Font\ Book\ 10

" -- Custom script files --
" My Shebang header template
source ~/.vim/customautoheadfiles.vim
" My comment line shortcuts
source ~/.vim/vcomments.vim
map <C-_> :call Comment()<CR>
map <C-?> :call Uncomment()<CR>

" Other plugins settings
set laststatus=2
let g:vcoolor_map = '<leader>c'
map <C-o> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
autocmd BufEnter * lcd %:p:h
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeShowHidden=1
let g:move_key_modifier = 'C'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'


" Airline
"let g:airline#extensions#clock#auto = 0
let g:airline_powerline_fonts = 1
"let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
"let g:airline#extensions#bufferline#enabled = 0
"let g:airline#extensions#bufferline#overwrite_variables = 0
"let g:airline#extensions#clock#format = '%H:%M'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tabs_label = ''
"let g:airline#extensions#tabline#show_buffers = 0


" ALE
let g:ale_linters = {'python': ['pycodestyle', 'pyflakes', 'pylint', 'flake8', 'mypy']}
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
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

" Folds
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
"set foldlevel=0 " Close all folds
set foldlevel=99 " Open all folds

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
