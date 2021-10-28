" Tatu Pesonen (narigon) .vimrc
" ----------------------------- 

" Remove previous autocmds
autocmd!
" encoding
scriptencoding utf-8
if !1 | finish | endif

" Set visual mode cursor color
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

" Leader
let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Sourcing
source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/plugins.vim

colorscheme onedark
