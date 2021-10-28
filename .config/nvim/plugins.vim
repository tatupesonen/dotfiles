call plug#begin('~/.config/nvim/plugged')
    " fzf    
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Theme
    Plug 'joshdick/onedark.vim'
    " Fzf switcher
    Plug 'kien/ctrlp.vim'
    " Intellisense
    Plug 'neovim/nvim-lspconfig'
call plug#end()
