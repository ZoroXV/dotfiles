" ~/.vimrc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/tpope/vim-sensible
Plugin 'tpope/vim-sensible'

" https://github.com/iRyukizo/tiger-syntax
Plugin 'iryukizo/tiger-syntax'

" https://github.com/ycm-core/YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

" https://github.com/tyrannicaltoucan/vim-deep-space
Plugin 'tyrannicaltoucan/vim-deep-space'

" https://github.com/isobit/vim-caddyfile
Bundle 'isobit/vim-caddyfile'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" runtime! plugin/sensible.vim

set encoding=utf-8 fileencodings=

syntax on

" Custom Color scheme
set background=dark
set termguicolors
colorscheme deep-space

let g:lightline = {
      \ 'colorscheme': 'deepspace',
      \ }

set number
set cc=80

" YCM OPTIONS
let g:ycm_show_diagnostics_ui = 0

" Custom Settings
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
" End of Custom Settings

autocmd Filetype make setlocal noexpandtab
autocmd Filetype txt setlocal noexpandtab

set list listchars=tab:»·,trail:·,eol:¬

"inoremap <expr> <Tab> ( col('.') == 1 \|\| getline('.')[: col('.') - 2] =~ '^\s*$' ) ? "\<Tab>" : repeat(' ', shiftwidth() - (virtcol('.') % shiftwidth()) + 1)


" per .git vim configs
" just `git config vim.settings "expandtab sw=4 sts=4"` in a git repository
" change syntax settings for this repository
let git_settings = system("git config --get vim.settings")
if strlen(git_settings)
	exe "set" git_settings
endif

