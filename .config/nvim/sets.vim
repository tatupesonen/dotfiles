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
set hlsearch
" enable true color
set termguicolors
set signcolumn=yes
set shell=zsh
set background=dark
set smarttab

" Disable swapfiles
set noswapfile
set nobackup
set undodir=~/.undodir
set undofile

" for cmp
set completeopt=menu,menuone,noselect

" Fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>f        :Files<CR>
nnoremap <leader>i        :Rg<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader>gi       :G<CR>
nnoremap <leader>gb       :G blame<CR>

" Df to exit insert mode
inoremap df <Esc>


set cmdheight=1
set wildignore+=*/node_modules/*
set t_BE=
" Incremental substitution, available since nvim 0.2

" Some key stuffs

if has('nvim')
    set inccommand=split
end
