" VIM Configuration File

" disable vi compatibility
set nocompatible

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Misc Settings
set undolevels=1000  " set number of undo levels
set history=1000     " mucho levels of history
set autoread         " Set to auto read when a file is changed from the outside
set showcmd          " show command in bottom bar
set ruler            " always display status line
set laststatus=2     " always display status line
set mouse=a          " allow use of the mouse
set nobackup         " this is not the 70's we don't need backups
set noswapfile       " disable swap files
set viewoptions=folds,options,cursor,unix,slash " Better compatibility
" use semicolon as another colon
noremap ; :

" configure tabwidth and insert spaces instead of tabs and indentation
set tabstop=2        " tab width is 2 spaces
set shiftwidth=2     " indent also with 2 spaces
set softtabstop=2    " let backspace delete indent
set expandtab        " expand tabs to spaces
set autoindent       " use indentation of previous line
set smartindent      " use intelligent indentation for C
set nowrap           " don't wrap lines
set pastetoggle=<F2> " <F2> to toggle auto-indentation when pasting in text

" lines
set number           " turn line numbers on
" set line number color
highlight LineNr ctermfg=grey
set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40
" 80 column limit
set colorcolumn=81 " Highlight column 81
highlight ColorColumn ctermbg=Black guibg=#2c2d27
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Searching
set hlsearch         " highlight when searching
set incsearch        " match while searching
set ignorecase       " case insensitive search
set smartcase        " smart case search
" space to clear search highlights
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" highlighting
syntax on            " turn syntax highlighting on
set showmatch        " highlight matching braces
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" window settings
set splitright       " Puts new vsplit windows to the right of the current
set splitbelow       " Puts new split windows to the bottom of the current
set lazyredraw       " Don't redraw while executing macros

" Key Commands
" <F5> to remove trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Pressing <leader>ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" session saving
set viminfo^=%       " Remember info about open buffers on close
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" You will not use the arrow keys
nnoremap <Left> :tabnew NOARROWKEYS<CR>
nnoremap <Right> :tabnew NOARROWKEYS<CR>
nnoremap <Up> :tabnew NOARROWKEYS<CR>
nnoremap <Down> :tabnew NOARROWKEYS<CR>
