set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

""""
Plugin 'bling/vim-airline'             "status-line and buffer tabs
Plugin 'scrooloose/nerdtree'           "folder explorer
Plugin 'scrooloose/nerdcommenter'      "comment | uncomment
Plugin 'majutsushi/tagbar'             "outline file (need tags file)
Plugin 'kien/ctrlp.vim'                "find files in directory
Plugin 'jasoncodes/ctrlp-modified.vim' "find modified git-versioned file

Plugin 'Valloric/YouCompleteMe'        "auto complete
Plugin 'junegunn/vim-easy-align'       "align
Plugin 'scrooloose/syntastic'          "syntax check
""""

call vundle#end()            " required
filetype plugin indent on    " required

