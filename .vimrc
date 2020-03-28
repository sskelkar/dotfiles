set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug plugins:
call plug#begin()

" plugin to see changes since last git commit
Plug 'airblade/vim-gitgutter'

call plug#end()


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim-ariline plugin: to display all open buffers on top
Plugin 'vim-airline/vim-airline'

" NerdTree plugin to explore files
Plugin 'scrooloose/nerdtree'

" ctrl+P plugin
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

" Alternative for Escape to switch vim modes (Commented out. Will use capslock from now on)
" :imap jj <Esc>

" Tab size
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ignorecase

" Highlight search results
:set hlsearch

" start NERDTree automatically when vim starts
autocmd VimEnter * NERDTree

" syntax on
syntax on

" Make buffer switching easy by pressing F5
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Key bindings to move around buffers [http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/]
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" -- solarized personal conf
colorscheme torte

" -- general settings [http://blog.jez.io/2015/03/03/vim-as-an-ide/]
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" airline options
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Ctags customizations
" ctrl + \ to open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" alt + ] open definition in a vertial split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" search for tags from current directory to home directory
set tags=~/.vim/tags/java

" https://dougblack.io/words/a-good-vimrc.html
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"autocmd VimEnter * NERDTree " start NERDTree automatically when vim starts

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <esc>
set mouse=a "do not select line number during mouse selection
