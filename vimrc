" the absolute crucial basics
set tabstop=2
set shiftwidth=2
set expandtab
" activate plugins
execute pathogen#infect()
filetype plugin on
" make more usable
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set cmdheight=2
set number
set history=1000
set showmatch
" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
