" Global Settings (plugin-independent)
syntax on

" edit
" http://vim.wikia.com/wiki/Indenting_source_code
set tabstop=4         " real tab width, used by smarttab setting
set softtabstop=2     " (see expandtab)
set expandtab         " convert tab to {softtabstop} amount spaces
set shiftround        " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
set shiftwidth=2      " indent amount when using >> <<

set mouse=a           " use mouse anywhere
set confirm           " confirm when quit unsaved file
set noswapfile        " dont generate .swp file

" display
set laststatus=2      " always show status
set number            " show line number
set wrap              " wrap lines, we dont want long lines
set cul               " underline current line
set list!             " show secret chars
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«

" search
set ignorecase        " ignore case when search
set smartcase         " word with >=1 uppercase => exact match
set hlsearch          " highlight search
set clipboard=unnamed " clip to system clipboard (register *)

set tags+=tags;/      " find a tags file from current folder up till root
set completeopt=longest,menu " auto complete options
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif,*.pdf,*.app,*.dmg,*.git,*.svn " ignore when use tab key

" FileType related
" may further move to .vim/ftplugin/{language}.vim
" http://vim.wikia.com/wiki/Keep_your_vimrc_file_clean
filetype on
filetype plugin on
filetype indent on

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufRead,BufNewFile *.{js} set filetype=javascript

augroup FTRuby
  au!
  au FileType ruby,eruby setlocal dict+=~/.vim/dict/ruby.dict
  au FileType ruby,eruby let g:rubycomplete_rails             = 1
  au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  au FileType ruby,eruby let g:rubycomplete_buffer_loading    = 1

  au BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context expect let double mock
  highlight def link rubyRspec Identifier
augroup END
