set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chazy/cscope_maps'

Plugin 'preservim/nerdtree'

Plugin 'rafi/awesome-vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set splitright
set splitbelow
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set autoindent
set smartindent
set tabstop=8
set shiftwidth=8
set noexpandtab
set showmatch
set omnifunc=syntaxcomplete#Complete
set t_Co=256
colorscheme hybrid
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Autostart of NERDTree with vim and new tab  "
 
autocmd VimEnter * NERDTree
autocmd BufWinEnter * silent NERDTreeMirror


" Cscope hotkeys "
map <F5> :!cscope -Rb<CR>:cs reset<CR><CR>
map <F12> :!cscope -qkb<CR>:cs reset<CR><CR>
