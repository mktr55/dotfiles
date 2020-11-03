"setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"--------------------------------------------------------
"追記
"https://qiita.com/ryuta69/items/98901f4c4f0683e7aa57
"--------------------------------------------------------
"setting
if has('vim_starting')
    set nocompatible
    endif

    if !filereadable(expand('~/.vim/autoload/plug.vim'))
        if !executable("curl")
              echoerr "You have to install curl or first install vim-plug yourself!"
                  execute "q!"
                    endif
                      echo "Installing Vim-Plug..."
                        echo ""
                          silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
                            let g:not_finish_vimplug = "yes"
                              autocmd VimEnter * PlugInstall
                              endif

                              " plugin
                              call plug#begin(expand('~/.vim/plugged'))
                              "" space + ne -> sidebar
                              Plug 'scrooloose/nerdtree'
                              Plug 'jistr/vim-nerdtree-tabs'
                              "" ga -> align
                              Plug 'junegunn/vim-easy-align'
                              "" space + go -> exec script
                              Plug 'thinca/vim-quickrun'
                              Plug 'Shougo/vimproc.vim', {'do' : 'make'}
                              "" gcc -> comment
                              Plug 'tpope/vim-commentary'
                              "" option bar
                              Plug 'vim-airline/vim-airline'
                              Plug 'vim-airline/vim-airline-themes'
                              "" auto bracket
                              Plug 'Raimondi/delimitMate'
                              Plug 'tpope/vim-surround'
                              "" error detect
                              Plug 'scrooloose/syntastic'
                              "" delete white space
                              Plug 'bronson/vim-trailing-whitespace'
                              "" auto complete
                              Plug 'sheerun/vim-polyglot'
                              Plug 'Valloric/YouCompleteMe'
                              Plug 'ervandew/supertab'
                              "" html
                              Plug 'hail2u/vim-css3-syntax'
                              Plug 'gorodinskiy/vim-coloresque'
                              Plug 'tpope/vim-haml'
                              Plug 'mattn/emmet-vim'
                              "" javascript
                              Plug 'jelera/vim-javascript-syntax'
                              "" php
                              Plug 'arnaud-lb/vim-php-namespace'
                              "" python
                              Plug 'davidhalter/jedi-vim'
                              Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
                              "" space + sh -> vimshell
                              Plug 'Shougo/vimshell.vim'
                              "2019-08-26 日本語マニュアル追記
                              Plug 'vim-jp/vimdoc-ja'

                              call plug#end()

"escを押した時の挙動 2019-06-11 追記
"inoremap <ESC> <ESC>:set iminsert=0<CR>  " ESCでIMEを確実にOFF"
"2019-08-26 日本語マニュアル用にプラグインとともに追記
set helplang=ja,en

"leader 設定
"https://easyramble.com/vim-leader-space-vimrc.html
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>zz :wq<CR>
nnoremap <Leader>e :e<CR>
"nnoremap <Leader><Leader>:

" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy
"nnoremap っｄ dd
"nnoremap っｙ yy
nnoremap ｘ x
nnoremap ： :

" jjでエスケープ ↓何故か動かない
"inoremap <silent> jj <ESC> 
" jjでエスケープ
inoremap jj <ESC>


" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap <silent> っj <ESC>
inoremap <silent> っｊ <ESC>

" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap jj <ESC>
inoremap っｊ <ESC>


set relativenumber


"<c-r>: redoが覚え辛いので変更
nnoremap U <c-r>
"自然なキーマップで移動量拡張
nnoremap J 10<Down>
nnoremap K 10<Up>
