" make backspace more useful
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
" read changed files automatically
set autoread
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set t_Co=256
" turn line numbers on
set number
set showmatch
" highlights the search results
set hlsearch
" incremental search
set incsearch
set virtualedit=onemore
" cursor can go one char beyond the last char
set smartcase
" turn autoindendation on
set autoindent
set textwidth=78
set formatoptions=c,q,r,t
set ruler
" highlights the current mouse
set cursorline
set hidden
" hides the cursor while typing
set mousehide
" visual settings
set background=dark
colorscheme solarized
set shell=/usr/bin/zsh
set showmode
set wildmenu
set laststatus=2
set statusline=Editing:\ %F\ %m%r%h%w\ %={%{&ff}\|%{strlen(&fenc)?&fenc:'none'}\|%{strlen(&ft)?&ft:'fundamental'}}\ (%l/%L,%v)\ %P
set scrolloff=10
set vb t_vb=
call pathogen#infect()
filetype off
filetype plugin indent on
syntax on
function! NuTyToggle()
    if(&number)
        set relativenumber
    elseif (&relativenumber)
        set norelativenumber
    else 
        set number
    endif
endfunc
function! ToggleBG()
    if(&background == "light")
        set background=dark
    else
        set background=light
    endif
endfunc
inoremap qq <Esc>
noremap <silent><F2> :call NuTyToggle()<cr>
noremap <F9> :call ToggleBG()<cr>
noremap <silent><F7> :NERDTreeToggle<cr>
noremap <silent><F8> :TlistToggle<cr>
