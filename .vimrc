call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'

" カラースキーム一覧
 Plug 'altercation/vim-colors-solarized' " solarized
 Plug 'croaker/mustang-vim'              " mustang
 Plug 'jeffreyiacono/vim-colors-wombat'  " wombat
 Plug 'nanotech/jellybeans.vim'          " jellybeans
 Plug 'vim-scripts/Lucius'               " lucius
 Plug 'vim-scripts/Zenburn'              " zenburn
 Plug 'mrkn/mrkn256.vim'                 " mrkn256
 Plug 'jpo/vim-railscasts-theme'         " railscasts
 Plug 'therubymug/vim-pyte'              " pyte
 Plug 'tomasr/molokai'                   " molokai
 Plug 'chriskempson/vim-tomorrow-theme'  " tomorrow night
 Plug 'vim-scripts/twilight'             " twilight
 Plug 'w0ng/vim-hybrid'                  " hybrid
 Plug 'freeo/vim-kalisi'                 " kalisi
 Plug 'morhetz/gruvbox'                  " gruvbox
 Plug 'toupeira/vim-desertink'           " desertink
 Plug 'sjl/badwolf'                      " badwolf
 Plug 'itchyny/landscape.vim'            " landscape
 Plug 'joshdick/onedark.vim'             " onedark in atom
 Plug 'gosukiwi/vim-atom-dark'           " atom-dark

call plug#end()

set t_Co=256

syntax on
set background=dark
colorscheme railscasts
