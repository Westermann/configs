" the absolute crucial basics
filetype indent on
filetype plugin on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set hidden
set wildmenu
set showcmd
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set ignorecase
set smartcase
set nostartofline
set ruler
set cmdheight=2
set number
set history=1000
set showmatch
" activate plugins
execute pathogen#infect()
" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
" Nvim-R settings
let R_in_buffer = 1
let R_close_term = 1
let R_rconsole_height = 35
" nerdtree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" airline statusline
let g:airline_theme='simple'
" for python
autocmd FileType python map <LocalLeader>p :w<CR> :w !python %<CR>
" for r & rmarkdown
let g:syntastic_enable_r_lintr_checker = 1
au BufRead,BufNewFile *.Rmd set filetype=rmarkdown
autocmd FileType rmarkdown map <LocalLeader>r :w<CR> :RMarkdown pdf latex_engine="xelatex"<CR>
" use rmarkdown for normal markdown
au BufRead,BufNewFile *.md set filetype=rmarkdown
" for JavaScript
au BufRead,BufNewFile *.sjs set filetype=javascript
au BufRead,BufNewFile *.ms set filetype=javascript

