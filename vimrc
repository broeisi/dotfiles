set nocompatible     " disable VI compatible mode


set expandtab        " use spaces instead of tabs
set tabstop=4        " tab spacing
set softtabstop=4    " unify
set shiftwidth=4     " indent/outdent by 4 columns
set autoindent       " auto indent
set shiftround       " always indent to the nearest tabstop


set number
set nohlsearch       " Don't continue to highlight searched phrases.
set incsearch        " But do highlight as you type your search.
set ignorecase       " Make searches case-insensitive.  
syntax enable        " syntax highlighting (formerly syntax on)


if has("gui_running")
    set lines=58 columns=94
    colorscheme molokai
endif

filetype plugin on

augroup filetype
au! BufRead,BufNewFile *.acl        set filetype=ciscoacl
augroup END

