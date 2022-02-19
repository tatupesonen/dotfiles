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

" Source plugin configs
source $HOME/.config/nvim/plugin_cfg/lspconfig.rc.vim
source $HOME/.config/nvim/plugin_cfg/treesitter.rc.vim
source $HOME/.config/nvim/plugin_cfg/nvim-cmp.rc.vim

colorscheme onedarkhc

" enable transparency
highlight Normal ctermbg=none
highlight NonText ctermbg=none

highlight Normal guibg=none
highlight NonText guibg=none
let g:airline_powerline_fonts=1
