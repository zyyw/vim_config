call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

"Always show current position
set ruler

" Highlight search results
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Zigzag
set number

" set NERDTreeToggle
let mapleader = ","
nmap <leader>nt :NERDTree<cr>

" map esc key
imap jj <Esc>

" set Encoding method -- English & Chinese
set fileencodings=utf-8,gb18030,utf-16,big5

" for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
" Plugin 'gmarik/vundle'
"
" " list all plugins that you'd like to install here
" Plugin 'kien/ctrlp.vim' " fuzzy find files
" Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
" Plugin 'benmills/vimux'
" Plugin 'tpope/vim-fugitive' " the ultimate git helper
" Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in
" visual mode
"
" call vundle#end()
" filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Modify .vimrc to enable colorscheme for Solarized VIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYU, deal with clipboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
