set nocompatible              " be iMproved, required
"filetype off                  " required

call plug#begin('~/.vim/plugged')

" For syntax and code analize
Plug 'valloric/youcompleteme'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
"Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" For Vim appearance
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'fatih/molokai'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"Plug 'enricobacis/vim-airline-clock'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'severin-lemaignan/vim-minimap'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
Plug 'chr4/nginx.vim'

" Usefull behaviours
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'auxiliary/vim-layout'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'farmergreg/vim-lastplace'
Plug 'pseewald/vim-anyfold'
Plug 'wesQ3/vim-windowswap'
Plug 'KabbAmine/vCoolor.vim'
"Plug 'junegunn/fzf'
Plug 'majutsushi/tagbar'
"Plug 'ctrlpvim/ctrlp.vim'

" For html
Plug 'alvan/vim-closetag'
Plug 'gorodinskiy/vim-coloresque'
Plug 'turbio/bracey.vim'

" All of your Plugins must be added before the following line
call plug#end()

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
let &t_TI = ""
let &t_TE = ""
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
"autocmd BufEnter * lcd %:p:h "open NerdTree relative to current file
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
