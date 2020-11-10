" auto-install vim-plug
if empty(glob('$LOCALAPPDATA/nvim/autoload/plug.vim'))
  silent !curl -fLo $LOCALAPPDATA/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('$LOCALAPPDATA/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " One Dark Theme
    Plug 'joshdick/onedark.vim'
    " Auto pairs
    Plug 'jiangmiao/auto-pairs'
    " easy commenting
    Plug 'tpope/vim-commentary'

call plug#end()
