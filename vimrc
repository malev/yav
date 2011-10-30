set number
set nocompatible
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ai
set expandtab
set smarttab
set title
let g:rubycomplete_rails = 1
set nocompatible   " We're running Vim, not Vi!
syntax on          " Enable syntax highlighting
filetype on        " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
compiler ruby      " Enable compiler support for ruby
let mapleader = ","

highlight Comment ctermbg=DarkGray
highlight Constant ctermbg=Blue
highlight Normal ctermbg=Black
highlight NonText ctermbg=Black
highlight Special ctermbg=DarkMagenta
highlight Cursor ctermbg=Green

" this next line is needed to enable your custom colors:
syntax enable

" autocorrect
source ~/.vim/autocorrect.vim

" NERDTree settings {{
" " Put focus to the NERD Tree with F3 (tricked by quickly closing it and
" " immediately showing it again, since there is no :NERDTreeFocus command")
" " Activar navegador de archivos
nmap <F3> :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
"
" " Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
"
" " Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
"
" " Quit on opening files from the tree
let NERDTreeQuitOnOpen=1
"
" " Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1
"
" " Use a single click to fold/unfold directories and a double click to open
" " files
let NERDTreeMouseMode=2
"
" " Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]
" }}"
" "NEEDTree auto start

" Mostrar lista de todo's
map <F2> :TaskList<CR>
" " Atajos para pestañas como los de Firefox/Chrome/Opera/etc
" " Control T nueva pestaña (la cerramos con :q)
map <c-t> <esc>:tabnew<cr>
" " Control PageUp/PageDown cambiar de pestaña
map <c-Left> :tabp<cr>
map <c-Right> :tabn<cr>

" fuzzyfinder {{{
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent><leader>ff :FufFile<cr>
nnoremap <silent><leader>fo :FufCoverageFileChange<cr>
nnoremap <silent><leader>fb :FufCoverageFileRegister<cr>
nnoremap <silent><leader>fd :FufDir<cr>
"}}}
