" Tatu Pesonen (narigon) .vimrc
" ----------------------------- 

" Remove previous autocmds
autocmd!
" encoding
scriptencoding utf-8
if !1 | finish | endif
syntax enable

" Leader
let mapleader = " "

" Sourcing
source $HOME/.config/nvim/plugins.vim

" Source plugin configs
luafile $HOME/.config/nvim/plugin_cfg/lspconfig.lua
source $HOME/.config/nvim/plugin_cfg/treesitter.rc.vim
luafile $HOME/.config/nvim/plugin_cfg/nvim-cmp.lua

luafile $HOME/.config/nvim/smarttab.lua

source $HOME/.config/nvim/sets.vim
colorscheme falcon

" enable transparency
highlight Normal ctermbg=none
highlight NonText ctermbg=none

highlight Normal guibg=none
highlight NonText guibg=none
let g:airline_powerline_fonts=1
lua << END
require('lualine').setup()
END
