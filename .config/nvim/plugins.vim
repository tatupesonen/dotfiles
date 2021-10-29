call plug#begin('~/.config/nvim/plugged')
    " fzf    
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Theme
    Plug 'joshdick/onedark.vim'
    Plug 'gruvbox-community/gruvbox'
    " Fzf switcher
    Plug 'kien/ctrlp.vim'
    " Intellisense
    Plug 'neovim/nvim-lspconfig'
    " Airline
    Plug 'vim-airline/vim-airline'

call plug#end()
