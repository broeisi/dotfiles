set nocompatible     " disable VI compatible mode


set expandtab        " use spaces instead of tabs
set tabstop=4        " tab spacing
set softtabstop=4    " unify
set shiftwidth=4     " indent/outdent by 4 columns
set autoindent       " auto indent
set shiftround       " always indent to the nearest tabstop
set showmatch
"set cursorline
let python_highlight_all = 1
set showcmd

set number
set nohlsearch       " Don't continue to highlight searched phrases.
set incsearch        " But do highlight as you type your search.
set ignorecase       " Make searches case-insensitive.  
syntax enable        " syntax highlighting (formerly syntax on)

set splitbelow
set splitright 

if has("gui_running")
    set lines=30 columns=94
    colorscheme molokai
    set guioptions-=m  " no menu bar
    set guioptions-=T  " no toolbar
    set guioptions-=L  " no left scroll bar
    set guioptions-=r  " no right scroll bar
endif

filetype plugin on

augroup filetype
au! BufRead,BufNewFile *.acl        set filetype=ciscoacl
augroup END


set laststatus=2                " statusline shows as the second last line
set statusline=%F\ %=\ %Y\ %=   " set nice status line
