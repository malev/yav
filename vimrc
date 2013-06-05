" no vi-compatible
set nocompatible

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" required for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" Better file browser
Bundle 'scrooloose/nerdtree'
" Code commenter
Bundle 'comments.vim'
" Class/module browser
Bundle 'majutsushi/tagbar'
" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'
" Tab list panel
Bundle 'kien/tabman.vim'
" Powerline
Bundle 'Lokaltog/vim-powerline'
" Surround
Bundle 'tpope/vim-surround'
" Autoclose
Bundle 'Townk/vim-autoclose'
" Indent text object
Bundle 'michaeljsmith/vim-indent-object'
" Autocompletion
Bundle 'AutoComplPop'
" Search results counter
Bundle 'IndexedSearch'
" XML/HTML tags navigation
Bundle 'matchit.zip'
" Gvim colorscheme
Bundle 'Wombat'
" Yank history navigation
Bundle 'YankRing.vim'
" CoffeeScript
Bundle 'vim-coffee-script'
" Syntastic
Bundle 'scrooloose/syntastic'
" Haml and Sass
Bundle 'tpope/vim-haml'
" Git Integration
Bundle 'tpope/vim-fugitive'
" Vim theme solarized
Bundle 'altercation/vim-colors-solarized'
" Vim markdown
Bundle 'plasticboy/vim-markdown'
" vim-javascript
Bundle 'pangloss/vim-javascript'
" ACK vim
Bundle 'mileszs/ack.vim'
" sugar for the UNIX shell commands
Bundle 'tpope/vim-eunuch'
" Whitespaces
Bundle 'bronson/vim-trailing-whitespace'

" Installing plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

"''''''''''''''''''''''''''''
" Vim specific
"''''''''''''''''''''''''''''
" allow plugins by file type
filetype plugin on
filetype indent on
" tabs and spaces handling
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" tablength exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal sw=4 sts=4 et tw=72
" incremental search
set incsearch
" highlighted search results
set hlsearch
" line numbers
set nu
" always show status bar
set ls=2

"''''''''''''''''''''''''''''
" Color theme
"''''''''''''''''''''''''''''
" use 256 colors when possible
set background=dark
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
    let &t_Co = 256
    let g:solarized_termcolors=256
    color solarized
else
    colorscheme delek
endif

"''''''''''''''''''''''''''''
" Custom functions
"''''''''''''''''''''''''''''
augroup vimrcEx
  autocmd!
  " Jump to last  cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"''''''''''''''''''''''''''''
" Key mapping (general)
"''''''''''''''''''''''''''''
" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3
" toggle paste / nonpaste
set pastetoggle=<F2>
" toggle Tagbar display
map <F4> :TagbarToggle<CR>
" tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>
imap <c-l> <space>=><space>
:nnoremap <CR> :nohlsearch<cr>
" navigate windows with meta+arrows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" save as sudo
ca w!! w !sudo tee "%"
" Maps ,, to Ctrl ^ -> switch between the last 2 files opened
nnoremap ,, <c-^>
" maps %% to the current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
" Common typos
:ca WQ wq
:ca Wq wq
:ca W w
:ca Q q

"''''''''''''''''''''''''''''
" Plugin config
"''''''''''''''''''''''''''''
" Vim markdown - to disable folding.
let g:vim_markdown_folding_disabled=1
" autofocus on Tagbar open
let g:tagbar_autofocus = 1
" tabman shortcuts
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'
" NERDTree (better file browser) toggle
map <F3> :NERDTreeToggle<CR>
" Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" Map ,r to ACK
nmap ,r :Ack
" automatically close autocompletion window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" CtrlP (new fuzzy finder)
let g:ctrlp_map = ',e'
nmap ,g :CtrlPBufTag<CR>
nmap ,G :CtrlPBufTagAll<CR>
nmap ,f :CtrlPLine<CR>
nmap ,m :CtrlPMRUFiles<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" CtrlP with default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo|\.log$',
  \ }
" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest
" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}
