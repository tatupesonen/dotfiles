call plug#begin('~/.config/nvim/plugged')
    " fzf    
    Plug '~/.fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Git stuff
    Plug 'tpope/vim-fugitive'

    " Intellisense
    Plug 'neovim/nvim-lspconfig'

    " Discord presence :zoop:
    Plug 'andweeb/presence.nvim'

    " Tree sitter
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

    " Autocompletion
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " Theme
    Plug 'pacokwon/onedarkhc.vim'
    Plug 'gruvbox-community/gruvbox'
    " Fzf switcher
    Plug 'kien/ctrlp.vim'
    " Autocompletion
    Plug 'nvim-lua/completion-nvim'
    Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }
    " Airline
    Plug 'vim-airline/vim-airline'

call plug#end()
