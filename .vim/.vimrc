set encoding=utf-8

" Reminder: Place this file in the Home directory
" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" I might want to change this later.
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=300

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

" Essentials

Plug 'nvim-telescope/telescope.nvim'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Nice to haves

Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'townk/vim-autoclose'
" Plug 'scrooloose/syntastic'

" Testing usefulness
" Will be moved to other category or removed after testing

Plug 'honza/vim-snippets'


" Theme specific plugins

" Plug 'valloric/youcompleteme'
Plug 'altercation/vim-colors-solarized'

""" Code display

" Essential for other plugins

Plug 'nvim-lua/plenary.nvim'

" Language support

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{



" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
