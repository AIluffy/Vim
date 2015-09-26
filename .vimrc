"The AI's Personal vim configure file. Continue to be improved.
"
"Modified Time: 2015/9/26
"
" ==> VBundle Configure
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"

"-- Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"-- Plugin 'L9'
Plugin 'SuperTab'

"-- Type (),"" auto complete
Plugin 'AutoClose'

"-- In Vim's editor window, display file directory in tree mode
Plugin 'The-NERD-tree'

" Git plugin not hosted on GitHub
"-- Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"-- Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"-- Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"-- Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==> Leader shortcuts
"
" leader is comma
let mapleader=","

" Fast saving
nnoremap <leader>w :w!<cr>

" travel through child windows
nnoremap nw <c-w><c-w>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" ==> General
"
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" do not keep a backup file, use version instead
set nobackup
set noswapfile

" keep an undo file (undo changes after closing)
set undofile

" Keep 500 lines of command line history
set history=500

" show the cursor position all the time
set ruler

" show the line number
set number

" hightlight current line
set cursorline

" display incomplete commands
set showcmd

" show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" visual autocomplete for command menu, it will provide a graphical menu of
" all the matches you can circle through
set wildmenu


" ==> Searching
"
" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" hightlight search results
set hlsearch

" make search act like search in modern browsers
set incsearch

" don't redraw while executing macros (good performance config) -----------still have some confusion, keep it  to future check
set lazyredraw

" for regular expressions turn magic on
set magic


" ==> Colors and Fonts
"
" Enable syntax highlighting
syntax on
set t_Co=256
set background=dark
colorscheme molokai

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8


" ==> Text, tab and indent related
"
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4


" ==> Movement
"
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesnt do anything
nnoremap $ <nop>
nnoremap ^ <nop>
