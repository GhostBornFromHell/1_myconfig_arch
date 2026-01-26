set nocompatible " Quitte le mode vi psychorigide
set encoding=utf-8 " Utilise l’UTF-8 partout, toujours
set fileformat=unix " Pas de retours Windows (CRLF)
set fileencodings=ucs-bom,utf-8,latin1


syntax on " Active la coloration syntaxique
set autoindent " Indente automatiquement
set tabstop=4 " Largeur des tabulations : 4 espaces
set shiftwidth=4 " Décalage de l'indentation
set expandtab " Utilise des espaces au lieu de tabulations
set number
set clipboard=unnamedplus " Permet de copier/coller avec le presse-papier

set cursorline

highlight CursorLine cterm=NONE ctermbg=cyan ctermfg=black guibg=NONE guifg=NONE

set whichwrap=<,>,[,],h,l 

nnoremap <F2> :set number!<CR>
nnoremap <F3> :set cursorline!<CR>
nnoremap <silent> <Space> :nohlsearch<CR>

set incsearch
set hlsearch

set ignorecase
set smartcase

"set laststatus=2
set ruler

set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

set scrolloff=5
set sidescrolloff=10
