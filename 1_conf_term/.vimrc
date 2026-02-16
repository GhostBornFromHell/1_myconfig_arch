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


set laststatus=2
highlight StatusLine cterm=NONE ctermfg=white ctermbg=black
set statusline=[%F]\ [%f]\ %y\ [%{&fileencoding}]\ %m\ %r\ %=[%p%%]\ [ligne:%l/%L]\ [col:%c]

highlight CursorLine cterm=NONE ctermbg=cyan ctermfg=black guibg=NONE guifg=NONE
highlight LineNr cterm=NONE ctermfg=blue ctermbg=NONE
highlight vimCommand cterm=NONE ctermfg=green ctermbg=NONE
highlight vimOper cterm=NONE ctermfg=green ctermbg=NONE

highlight zshOptStart cterm=NONE ctermfg=green ctermbg=NONE
highlight zshCommands cterm=NONE ctermfg=green ctermbg=NONE
highlight zshConditional cterm=NONE ctermfg=green ctermbg=NONE
highlight zshDelimiter cterm=NONE ctermfg=green ctermbg=NONE
highlight zshOperator cterm=NONE ctermfg=green ctermbg=NONE
highlight zshRepeat cterm=NONE ctermfg=green ctermbg=NONE
highlight zshRedir cterm=NONE ctermfg=green ctermbg=NONE 


highlight sshconfigKeyword cterm=NONE ctermfg=green ctermbg=NONE

highlight kittyOptionName cterm=NONE ctermfg=green ctermbg=NONE


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
