" Key-bindings (plugin-independent)

let mapleader = ','

" clear trailing spaces
nnoremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" clear highlights
nnoremap <Leader>h :nohl<CR>

" switch between splits
noremap <Leader>w <C-w>w

" switch(pre/next) | close | delete buffer(without close split)
map <Leader>p :bp<CR>
map <Leader>n :bn<CR>
" map <Leader>w :bw<CR>
map <Leader>d :b#<Bar>bd#<CR>

" jump to tags(current word) and adjust position
map <C-[> <C-]>zz

" show modifications since last save
map <Silent> <Leader>m :w !diff % -<CR>
