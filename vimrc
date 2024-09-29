" vimrc file
"                
" Maintained by -
" Sandesh Kumar Sodhi
"     
" Copy it to /root/.vimrc                                                                                  
"               

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"                                                                                   
  finish
endif
                                                     
" Use Vim settings, rather then Vi settings (much better!).     
" This must be first, because it changes other options as a side effect.
"set nocompatible                                                                                          
                                                     
" allow backspacing over everything in insert mode
set backspace=indent,eol,start                                                                             

set history=50         " keep 50 lines of command line history
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands                                                                                                                                                                   
set incsearch          " do incremental searching
set ch=1                   " Make command line two lines high
set mousehide              " Hide the mouse when typing text
set ai     
set expandtab          " Insert space characters whenever the tab key is pressed
set ts=4
set sw=4                                                                                                   
set nowritebackup                                                                                          
set nobackup
set shortmess+=I                         
set nu  
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(byte:\ %o\ line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif                                                                                                      
                                                                                                           
"                                 
" To highlight portions of lines which are at column 80 and more
"             
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
                                                                                                           
set background=dark " makes c file comments visible
" highlight clear comment -- makes c file comments white
set tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags
nmap <F1> nop
map <F1> <Esc>
imap <F1> <Esc>
imap <> nop


" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


set autoindent         "set autoindenting on
