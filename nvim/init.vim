""" ZoroXV's NVim Config

""" Vim-Plug
call plug#begin()

" Core Plugins
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" Functionalities Plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'

" Colorschemes Plugins
Plug 'bluz71/vim-nightfly-colors'

call plug#end()

""" Main Configuration
filetype plugin indent on
set mouse=a
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

set hlsearch
set ignorecase
set incsearch
set smartcase
set encoding=utf-8 fileencodings=
set list listchars=tab:»·,trail:·,eol:¬

set splitright
set splitbelow

syntax on

set number
set cc=80

""" Coloring
colorscheme nightfly
set termguicolors

""" Plugins Configuration
lua << EOF
servers = {
    'pyright',
    'rust_analyzer',
    'gopls',
}
require('treesitter-config')
require('lspconfig-config')
require('nvim-tree-config')
EOF
