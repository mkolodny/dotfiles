" Now any plugins you wish to install can be extracted to a subdirectory under
" ~/.vim/bundle, and they will be added to the 'runtimepath'
call pathogen#infect()

" Vundle
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Bundles here:
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nosmartindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set number
set relativenumber
set ignorecase      " case-insensitive search
set smartcase       " upper-case sensitive search

" copying copies to the clipboard
set clipboard=unnamed

" Turn on omni complete
autocmd FileType python set omnifunc=pythoncomplete#Complete

" 4 spaces for tabs in *.py files
au BufNewFile,BufReadPost *.py setl shiftwidth=4 expandtab

" compile coffeescript on save
"autocmd BufWritePost *.coffee silent make!
"autocmd QuickFixCmdPost * nested cwindow | redraw!

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite *.coffee if ! &bin | silent! %s/\s\+$//ge | endif

" Open macvim in full screen
if has("gui_running")
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
endif

" solarized
syntax enable
set background=dark
colorscheme solarized
set guifont=Menlo:h12

" Yank and paste to the system clipboard
set clipboard=unnamed

" map ; to :
nmap ; :

" open NERDtree with ctrl-m
map <C-m> :NERDTreeToggle<CR>

" switch panes with ctrl-direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" move panes with alt-shift-direction
map ∆ <C-W>J
map ˚ <C-W>K
map ˙ <C-W>H
map ¬ <C-W>L

" relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" toggle relative line numbers
nnoremap <C-n> :call NumberToggle()<cr>

" create a newline above/below the current line
" without entering insert mode
nmap [<space> O<Esc>
nmap ]<space> o<Esc>

" map enter to escape
inoremap <S-CR> <Esc>
" Map ✠ (U+2720) to <S-CR>, so we have <S-CR> mapped to ✠ in iTerm2 and
" ✠ mapped back to <S-CR> in Vim. 
imap ✠ <S-CR>

" Dash - Searches for the |word| under the cursor
" considering the current keyword setup for
" docset lookup.
:nmap <silent> <leader>d <Plug>DashSearch

" Dash - Searches for the |word| under the cursor in all docsets.
:nmap <silent> <leader>D <Plug>DashGlobalSearch

" Don't create buffer backups on save
set nowritebackup

" Turn off YouCompleteMe in html, css, scss and less files
let g:ycm_filetype_blacklist = {
  \ 'html' : 1,
  \ 'css' : 1,
  \ 'less' : 1,
  \ 'scss' : 1
  \}
let g:ycm_path_to_python_interpreter =  '/usr/local/bin/python'

" Close the Omni-Completion tip window after making a selection
autocmd CursorMovedI *  if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Use a more subtle dotted guide for indentLine
let g:indentLine_char = '︙'

" Use visual mode to select lines, then # to comment them,
" or -# to uncomment them in Python.
vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

" Ctrlp 
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Designlab
"au BufRead,BufNewFile,BufEnter /sites/designlab/* setlocal ts=4 sts=4 sw=4

" Vim-JSX
" Allow JSX highlighting in .js files
let g:jsx_ext_required = 0

" Emmet
let g:user_emmet_settings = {'javascript.jsx': {'extends': 'jsx'}}
