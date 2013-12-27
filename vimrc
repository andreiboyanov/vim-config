syntax on
filetype on
filetype plugin indent on
call pathogen#incubate()
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>g :GundoToggle<CR>
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

nmap <leader>a <Esc>:Ack!

nnoremap <leader>v <Plug>TaskList

colorscheme desert
set number
