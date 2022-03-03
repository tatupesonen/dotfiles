" Sets
set expandtab
" set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set shiftwidth=4
set title
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
set mouse+=a

" Disable swapfiles
set noswapfile
set nobackup
set undodir=~/.undodir
set undofile

set autoindent

" for cmp
set completeopt=menu,menuone,noselect

" Fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>f        :Files<CR>
nnoremap <leader>i        :Rg<CR>
nnoremap <leader>b        :Buffers<CR>
nnoremap <leader>gi       :G<CR>
nnoremap <leader>gb       :G blame<CR>

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Tab nav
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>

" Df to exit insert mode
inoremap df <Esc>

" Theme stuff
let g:falcon_airline = 1
let g:airline_theme = 'falcon'
let g:falcon_background = 0
let g:falcon_inactive = 1
colorscheme falcon


set cmdheight=1
set wildignore+=*/node_modules/*
set t_BE=
set cursorline
" Incremental substitution, available since nvim 0.2

" Some key stuffs

if has('nvim')
    let test#strategy = "neovim"
    set inccommand=split
end
