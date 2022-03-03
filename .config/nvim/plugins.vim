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

    " Tests
    Plug 'vim-test/vim-test' 

    " Autocompletion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " Auto pairs
    Plug 'jiangmiao/auto-pairs'

    " Discord presence
    Plug 'andweeb/presence.nvim' 
    
    " Theme
    Plug 'pacokwon/onedarkhc.vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'fenetikm/falcon'

    " Fzf switcher
    Plug 'kien/ctrlp.vim'
    " Autocompletion
    Plug 'nvim-lua/completion-nvim'
    Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }
    " Airline
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    " Top bar
    Plug 'romgrk/barbar.nvim' 
    
    " Nerdtree
    Plug 'preservim/nerdtree' 
call plug#end()
