"""""""""""""""""""""""""
" Load color theme.
"""""""""""""""""""""""""
color xoria256

"""""""""""""""""""""""""
" Change directory automatically. 
"""""""""""""""""""""""""
set autochdir

"""""""""""""""""""""""""
" Search options.
"""""""""""""""""""""""""
set hlsearch
set incsearch

set textwidth=79

"""""""""""""""""""""""""
" Filetype plugin.
"""""""""""""""""""""""""
filetype plugin indent on

"""""""""""""""""""""""""
" No tabs.
"""""""""""""""""""""""""
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=1

""""""""""""""""""""" 
" Master key.
""""""""""""""""""""" 

let mapleader=","

""""""""""""""""""""" 
" Searching.
""""""""""""""""""""" 

set hlsearch
set smartcase
nnoremap <leader>/ :set hlsearch!<CR>


""""""""""""""""""""" 
" Saving.
""""""""""""""""""""" 

map <leader>s :w<CR>

""""""""""""""""""""" 
" Window movement.
"""""""""""""""""""""

function! WinMove(key) 
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else 
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
 
map <leader>h              :call WinMove('h')<cr>
map <leader>k              :call WinMove('k')<cr>
map <leader>l              :call WinMove('l')<cr>
map <leader>j              :call WinMove('j')<cr>

map <leader>wc :wincmd q<cr>
map <leader>wr <C-W>r

map <leader>H              :wincmd H<cr>
map <leader>K              :wincmd K<cr>
map <leader>L              :wincmd L<cr>
map <leader>J              :wincmd J<cr>

