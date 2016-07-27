set undofile                 "turn on the feature  
set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
set undolevels=1000          " How many undos
set undoreload=10000         " number of lines to save for undo

syntax on

execute pathogen#infect()
filetype plugin indent on
:set expandtab
:set shiftwidth=2
:set tabstop=2
:set number
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set hidden
set runtimepath^=~/.vim/bundle/ctrlp.vim
map :vb<CR> :vertical sb<CR>
map  <C-j> :bn<CR>
map  <C-k> :bp<CR>

let g:multi_cursor_next_key='<C-m>'
map  <C-n> :NERDTreeToggle<CR>
map  <C-g> :GundoToggle<CR>
map  <C-b> :CtrlPMRU<CR>
nmap <C-t> :TagbarToggle<CR>

nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen = 1
let javascript_enable_domhtmlcss=1
let b:javascript_fold=1

let g:gitgutter_enabled = 0
nmap <leader>gg :GitGutterToggle<CR>
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:syntastic_html_checkers=['']
let g:AutoPairsFlyMode = 1
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = {'dir': '/node_modules/'}
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
