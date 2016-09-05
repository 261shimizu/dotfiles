
" vim-plug関連
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'

" カラースキーム一覧(:Unite colorscheme -auto-preview でプレビュー)
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

" vimの表示設定
set t_Co=256
syntax on
set background=dark
colorscheme Tomorrow-Night-Bright

set number " 行数表示
set title "
set showmatch "対応する括弧を強調表示

set expandtab "タブ入力を複数のスペースに置き換え
set shiftwidth=2 "自動インデントでずれる幅
set tabstop=2 "画面上でタブ文字が占める幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行をインデントを増減

set whichwrap=b,s,[,],<,> "行頭行末の左右移動で行をまたぐ
set backspace=indent,eol,start "バックスペースの制限解除
set showcmd "
set cursorline "カーソル行強調
set cursorcolumn "カーソル列強調
set virtualedit=onemore " 回り込み

set list "不可視文字を表示
set list listchars=tab:\‣\- " タブを可視化
set hidden "保存されていないファイルがあっても別のファイルを開ける
set nobackup "バックアップファイルを作成しない
set noswapfile "スワップファイルを作成しない
set history=10000 "コマンドラインの履歴を10000件保存
set scrolloff=8 "上下8行の視界を確保
set sidescrolloff=16 "左右スクロール時の視界を確保
set sidescroll=1 "左右スクロールは1文字ずつ行う
set confirm "保存されていないファイルがあるときは終了前に保存確認
set cmdheight=2 "メッセージ表示欄を2行確保
set laststatus=2 "ステータス行を常に表示

"日本語入力関連便利機能(あ＋Enterでインサートモードになる等)
nnoremap あ a
nnoremap い i
nnoremap お o
nnoremap っｄ dd
nnoremap っｙ yy
nnoremap ｐ p
nnoremap う u
nnoremap Ｇ G
nnoremap っｇ gg
nnoremap Ａ A
nnoremap Ｉ I
nnoremap Ｏ O
