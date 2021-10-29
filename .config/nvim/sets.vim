" Sets
set expandtab
set smartindent
" set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set title
set autoindent
set nu
set nowrap
set scrolloff=8
set incsearch
" enable true color
set termguicolors
set signcolumn=yes
set shell=fish
set background=dark
set smarttab

" Disable swapfiles
set noswapfile
set nobackup
set undodir=~/.undodir
set undofile

set cmdheight=2
set wildignore+=*/node_modules/*
set t_BE=
" Incremental substitution, available since nvim 0.2
if has('nvim')
    set inccommand=split
end
