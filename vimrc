set nocompatible             " disable VI compatible mode
syntax enable                " syntax highlighting (formerly syntax on)
set encoding=utf-8           " set the encoding to utf-8
set showcmd                  " display incomplete commands
filetype plugin indent on    " load file type plugins + indentation


"" Whitespace
set nowrap                        " don't wrap lines
set expandtab                     " use spaces instead of tabs
set tabstop=4                     " tab spacing
set softtabstop=4                 " unify
set shiftwidth=4                  " indent/outdent by 4 columns
set autoindent                    " auto indent
set shiftround                    " always indent to the nearest tabstop
set backspace=indent,eol,start    " backspace through everything in insert mode


"" Searching
set nohlsearch       " Don't continue to highlight searched phrases.
set incsearch        " But do highlight as you type your search.
set ignorecase       " Make searches case-insensitive.  
set smartcase        " ... unless they contain at least one capital letter


"" Python specific
let python_highlight_all = 1
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py :%s/\s\+$//e


"" Misc
set showmatch
"set cursorline
set showcmd
set number
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

filetype plugin indent on

augroup filetype
au! BufRead,BufNewFile *.acl        set filetype=ciscoacl
augroup END


set laststatus=2                " statusline shows as the second last line
set statusline=%F\ %=\ col:\ %c\ %Y\ %=   " set nice status line

"command to easily install plugins... just put them in .vim/bundle directory
execute pathogen#infect()
