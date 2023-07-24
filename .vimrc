" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Use system clipboard
" needs vim compiled with 'clipboard' feature, e.g. in vim-gtk
if has("clipboard")
  set clipboard=unnamedplus
endif

" Sudo call from vim
cmap w!! w !sudo tee > /dev/null %

" Show line numbers
set nu
set relativenumber

" Tab handling
set expandtab ts=4 shiftwidth=4

" Highlight current line
set cursorline
highlight CursorLine cterm=none ctermbg=234

" Highlight line max length
highlight ColorColumn ctermbg=233
au BufRead,BufNewFile *.py set colorcolumn=89

" Highlight unnecessary whitespace
" au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=237
au BufRead,BufNewFile *.py match ExtraWhitespace /\s\+$/

" Auto-fold files according to syntax (maximum depth 1)
set foldmethod=indent
set foldnestmax=1
nnoremap <space> za
vnoremap <space> zf

" Open all folds on new buffer
au BufWinEnter * normal zR

" Highlight folds
highlight Folded        cterm=none  ctermbg=235 ctermfg=129

" Auto-save and auto-load folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
