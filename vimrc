syntax on
filetype on
filetype plugin indent on
call pathogen#incubate()
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99

" Like PageUp and PageDown but with Ctrl+k and Ctrl+j
map <c-k> 24k
map <c-j> 24j
" Previous/next word with Ctrl+h, Ctrl+l
map <c-h> B
map <c-l> W

" Gundo is a greate undro/redo tool. Start it with \g. q for quit
map <leader>g :GundoToggle<CR>
let g:gundo_close_on_revert = 1

" Validate python code and programming style according PEP8 with \8
" or with \f (for PyFlake)
let g:pep8_map='<leader>8'
autocmd FileType python map <leader>f :call Flake8()<CR>

" Autocompletion with <ctrl>+<space>
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'


" FIXME: doesn't work for now. 
map <leader>j :RopeGotoDefinition<CR>

" Powerfull searcj using the ack command. Start it with \a
nmap <leader>a <Esc>:Ack!

" TaskList gives a quick access to lines with TODO and FIXME. Start it with \v
map <leader>v <Plug>TaskList

" \t starts command-t. that's a really quick way to open files even in large
" projects. followign are some configurations of command-t
let g:CommandTMaxHeight=25
let g:CommandTMinHeight=15
" let g:CommandTHighlightColor=Green
set wildignore=*.pyc,*.o

colorscheme desert
set number

" TODO: Да направя командите (поне поне основните) да работи и когато е избрана българска клавиатура

set tabstop=4 shiftwidth=4 expandtab
map <leader>d iimport pdb; pdb.set_trace()<ESC>I
