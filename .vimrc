"The AI's Personal vim configure file. Continue to be improved.
"
"Modified Time: 2015/10/24
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

"-- Comment stuff
Plugin 'tpope/vim-commentary'

"-- Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

"-- In Vim's editor window, display file directory in tree mode
Plugin 'The-NERD-tree'

"-- Vim plugin, insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

"-- Full path fuzzy file. buffer, mru, tag, ... finder for vim
Plugin 'kien/ctrlp.vim'

"-- Plugin to toggle, display and navigate marks
Plugin 'vim-scripts/vim-signature'

"-- CtrlP.vim extension. It simply navigates and jumps to function definition from the
"current file without ctags
Plugin 'tacahiroy/ctrlp-funky'

"-- Display thin vertical lines at each indentation level for code indented spaces
Plugin 'Yggdroot/indentLine'

"-- The "Tag List" plugin is a source code browser plugin for Vim and
"provides an overview of the structure of source code files and allows
"you to efficiently browse through source code files for different
"programming languages.
Plugin 'vim-scripts/taglist.vim'

"-- Vim indent file for java sources file
Plugin 'xuhdev/indent-java.vim'

"-- Additional Vim syntax highlighting for C++(including C++11/14)
Plugin 'octol/vim-cpp-enhanced-highlight'

" Git plugin not hosted on GitHub
"-- Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"-- Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"-- Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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

" Fast close
nnoremap <leader>q :q<cr>

" travel through child windows
nnoremap nw <c-w><c-w>

" Fast close
nnoremap <leader>q :q<cr>

" Fast pair
nmap <leader>m %

" Copy the chosen block to the system clipboard
vnoremap <leader>y "+y

" Paste the content of clipboard to the vim
nmap <leader>p "+p

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Pressing, ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" map check all + copycheck all
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY 

" Quick write session with <F2>
map <leader><F2> :mksession! ~/.vim_session <cr>

" Load session with <F3>
map <leader><F3> :source ~/.vim_session <cr>

" ==> General
"
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" do not keep a backup file, use version instead
set nobackup
set noswapfile
set nowb

" keep an undo file (undo changes after closing)
set undofile

" Keep 500 lines of command line history
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" show the cursor position all the time
set ruler

" show the line number
set number

" highlight current line
set cursorline

" display incomplete commands
set showcmd

" Don't use Ex mode, use Q for formatting
map Q gq

" show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" visual autocomplete for command menu, it will provide a graphical menu of
" all the matches you can circle through
set wildmenu

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a 
endif

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


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
syntax enable
syntax on
set t_Co=256
set background=dark
colorscheme dracula 

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

" Auto indent
set autoindent

" Wrap lines
set wrap

" ------------Code Fold
" Fold based on syntax
set foldmethod=syntax

" Starting vim without code folding
set nofoldenable

" Space open/closes folds
nnoremap <space> za

" ==> Map
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

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" open NERDTree to open a directory tree
map <F4> :NERDTree<cr>


" ==> IDE Settings
"
" New .c, .h, .sh, .java file, auto insert file header
autocmd BufNewFile *.cpp,*.sh,*.java exec ":call SetTitle()"
func SetTitle()
    " .sh file type
    if &filetype == 'sh'
        call setline(1, "\#! /bin/bash")
        call append(line(".")+2, "")
    if &filetype == 'cpp'
        call setline(1, "#include<iostream>")
        call append(line(".")+2, "")
        call append(line(".")+3, "using namespace std;")
        call append(line(".")+4, "")
    endif
endfunc

" C, C++ complie and run map to Ctrl+B
map <F7> :call CompileRunGcc()<cr>

func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc

" ==> For IDE Plugins Settings
"
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Remember info about open buffers on close
set viminfo^=%

" --> NERDTree Plugin
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only wnidow left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" --> CtrlP
" Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" Disable work path mode
let g:ctrlp_working_path_mode = '0'

" Tell CtrlP always open files in new buffers
let g:ctrlp_switch_buffer=0

" Exclude files or directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

" Vim+Ctags+CtrlP, let you search through your tags file and jump to where
" tags are defined
nnoremap <leader>t :CtrlPTag<cr>

" --> CtrlP-Funky
" Define key mapping
map <F6> :CtrlPFunky<cr>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

" --> TagList
" Map a key to invoke taglist
map <F5> :Tlist<cr>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1

" --> IndentLine
" Change Character Color
let g:indentLine_color_term = 239
"Change Indent Char
let g:indentLine_char = '┆'
"Disable by default
let g:indentLine_enabled = 1
"Specify a character to show for leading spaces
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1 

"--> cpp-enhanced-highlight
" Highlighting of class scope if disabled by default
let g:cpp_class_scope_highlight = 1
"Highlighting of template functions is enabled by setting
let g:cpp_experimental_template_highlight = 1

" --> Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
