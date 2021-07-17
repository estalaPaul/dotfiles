"" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'dense-analysis/ale'
Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'townk/vim-autoclose'
Plugin 'nelsyeung/twig.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/fzf.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'osyo-manga/vim-anzu'
Plugin 'watzon/vim-edge-template'
Plugin 'junegunn/goyo.vim'

" Color Schemes
Plugin 'joshdick/onedark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
