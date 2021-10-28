" Tatu Pesonen (narigon) .vimrc
" ----------------------------- 

" Remove previous autocmds
autocmd!
" encoding
scriptencoding utf-8
if !1 | finish | endif
syntax enable

" Set visual mode cursor color
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" Leader
let mapleader = " "

" Sourcing
source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/plugins.vim

" Maps
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fi <cmd>Rg<cr>
nnoremap <leader>fb <cmd>Buffers<cr>

colorscheme onedark
