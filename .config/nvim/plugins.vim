call plug#begin('~/.config/nvim/plugged')
    " fzf    
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Git stuff
    Plug 'tpope/vim-fugitive'

    " Theme
    Plug 'pacokwon/onedarkhc.vim'
    Plug 'gruvbox-community/gruvbox'
    " Fzf switcher
    Plug 'kien/ctrlp.vim'
    " Intellisense
    Plug 'neovim/nvim-lspconfig'
    " Autocompletion
    Plug 'nvim-lua/completion-nvim'
    Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }
    " Airline
    Plug 'vim-airline/vim-airline'

call plug#end()
