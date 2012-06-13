"" Mouse
""if has("mouse")
""  set mouse=a
""endif

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
let mapleader=","
set nocompatible   " We're running Vim, not Vi!
syntax on          " Enable syntax highlighting
filetype on        " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
compiler ruby      " Enable compiler support for ruby

colo baycomb
set background=dark

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
map <c-p> :tabp<cr>
map <c-n> :tabn<cr>

" Reduce number of entries found for speed
let g:fuzzy_ceiling = 40000
"
" " Ignore vendor directory
let g:fuzzy_ignore = 'vendor/*'

" " Tabs for differente files
" Tabbing rules
au BufRead *.html set ts=2 sw=2 sts=2 textwidth=120
au BufRead *.js set ts=2 sw=2 sts=2"
au BufRead *.py set ts=4 sw=4 sts=4"

"" FuzzySearch
nnoremap <silent> <leader>fff :FufFile<CR>
nnoremap <silent> <leader>ff :FufCoverageFile<CR>
nnoremap <silent> <leader>fo :FufCoverageFileChange<CR>
nnoremap <silent> <leader>fb :FufCoverageFileRegister<CR>
nnoremap <silent> <leader>fd :FufDir<CR>

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

