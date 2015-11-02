" Plugins Config (variables & maps)
let mapleader = ',' "<leader> := ,

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " open buffers tab
" preview on
" https://github.com/bling/vim-airline/wiki/Screenshots
let g:airline_theme = 'solarized'

" Nerdtree & Tagbar
map  <F3>       :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
map  <F8>       :TagbarToggle<CR>
imap <F8> <ESC> :TagbarToggle<CR>
" Open NERDTree when call vim with no args
autocmd vimenter * if !argc() | NERDTree | endif
" Quit vim when no file left except for NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NerdCommenter
map  <C-_> <leader>c<space>
imap <C-_> <ESC><leader>c<space>
let NERDSpaceDelims = 1 " add 1 space after delimeter

" CtrlP & ctrlp-modified
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode  = 'ra'
let g:ctrlp_custom_ignore      = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore     += '\v\.(exe|so|dll)$'

nmap <Leader>m :CtrlPModified<CR>
nmap <Leader>M :CtrlPBranch<CR>

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
" Start interactive EasyAlign for a motion/text object (e.g. ga)(gaip[number]=)
map ga                      <Plug>(EasyAlign)
map <leader>=               gaip=
map <leader>:               gaip:
map <leader><space>         gaip<space>
map <leader><leader>=       gaip*=
map <leader><leader>:       gaip*:
map <leader><leader><space> gaip*<space>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 2
let g:syntastic_check_on_open            = 0
let g:syntastic_quiet_messages           = { "type": "style" }
" Supported checker list
" https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
let g:syntastic_ruby_checkers = ['rubocop']
