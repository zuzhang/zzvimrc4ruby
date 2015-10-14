" Key-bindings (plugin-independent)

let mapleader = ','

" clear trailing spaces
nnoremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" clear highlights
nnoremap <leader>h :nohl<CR>

" switch between splits
map <C-w> <C-w>w

" switch(pre/next) | close | delete buffer
map <Leader>p :bp<cr>
map <Leader>n :bn<cr>
map <Leader>w :bw<cr>
map <Leader>d :bd<cr>
