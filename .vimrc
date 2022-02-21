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

" http://vimblog.hatenablog.com/entry/vimrc_key_mapping
" nnoremap ; :



" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
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

" https://qiita.com/lighttiger2505/items/2f6e4686b8db051378c0
"コマンドモード
" http://cohama.hateblo.jp/entry/20130529/1369843236
set nocompatible
set wildmode=longest:full,full
set wildmenu

" https://vim-jp.org/vim-users-jp/2011/01/31/Hack-198.html
" 新しいウィンドウを下に開く
set splitbelow

" 新しいウィンドウを右に開く
set splitright

" https://koirand.github.io/blog/2019/vim-memo/
autocmd BufNewFile,BufRead memo.md $r! echo '--------------------------------------------------------------------------------' && date

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
Plug 'joshdick/onedark.vim'
"vim-plug
Plug 'iberianpig/ranger-explorer.vim'
" Plug 'junegunn/fzf'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
"
Plug 'chengzeyi/fzf-preview.vim'



Plug 'previm/previm'




Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug  'skanehira/translate.vim'


Plug 'thinca/vim-quickrun'


Plug 'previm/previm'

Plug 'mattn/vim-maketable'


Plug 'Shougo/unite.vim'

Plug 'ujihisa/unite-colorscheme'

Plug 'vim-jp/vimdoc-ja'


" https://qiita.com/reireias/items/beaa3bb0e299ae934217
Plug 'dhruvasagar/vim-table-mode'
Plug 'tomtom/tcomment_vim' "コメントアウト系

Plug 'tpope/vim-surround' "you sourround me
Plug 'cohama/lexima.vim' "カッコ自動補完

Plug 'Yggdroot/indentLine' "インデントの可視化

Plug 'sorah/presen.vim'"プレゼン

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ervandew/supertab'

Plug 'dracula/vim'

Plug 'easymotion/vim-easymotion'

Plug 'preservim/nerdtree'


                              call plug#end()


"" ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"" youcompleteme 動かない？？
"let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
"let g:ycm_python_binary_path = '/usr/bin/python2.7'
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_auto_trigger = 1
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
""エラーになるため
"let g:ycm_key_list_stop_completion = ['<C-y>', '<Enter>']
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:make = 'gmake'
"if exists('make')
"    let g:make = 'make'
"endif

" "" auto-format
" au BufWrite * :Autoformat
" エラーになるのでコメントアウト

"" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"  emmet

" nerdtree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <Leader>dir :NERDTreeTabsToggle<CR>
autocmd BufWritePre * :FixWhitespace
augroup NERD
    au!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END
"
"https://www.toumasu-program.net/entry/2019/01/28/105352
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

"https://qiita.com/yaginuuu/items/d0a8d045035ab251c96c
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 " 隠しファイルを表示する
let NERDTreeShowHidden = 1
" https://stackoverflow.com/questions/4819079/vim-nerdtree-open-bookmarks-when-vim-is-started
let NERDTreeShowBookmarks=1



"" quickrun
 
nnoremap <Leader>go :QuickRun<CR>
nnoremap <C-U>qr :QuickRun<CR>
let g:quickrun_config={'*': {'split': ''}}
let g:quickrun_config.cpp = {
            \   'command': 'g++',
            \   'cmdopt': '-std=c++11'
            \ }

"" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"" vimshell
"" nnoremap <Leader>sh :VimShellPop<CR>
nnoremap <Leader>sh :vertical terminal<CR>
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

"" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" "" jedi-vim
" let g:jedi#popup_on_dot = 0
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "0"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#smart_auto_mappings = 0
" let g:jedi#force_py_version = 3
" autocmd FileType python setlocal completeopt-=preview

"" syntastic
let g:syntastic_python_checkers=['python', 'flake8']
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" "" vim-airline
" let g:airline#extensions#virtualenv#enabled = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" if !exists('g:airline_powerline_fonts')
"     let g:airline#extensions#tabline#left_sep = ' '
"     let g:airline#extensions#tabline#left_alt_sep = '|'
"     let g:airline_left_sep          = '▶'
"     let g:airline_left_alt_sep      = '»'
"     let g:airline_right_sep         = '◀'
"     let g:airline_right_alt_sep     = '«'
"     let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
"     let g:airline#extensions#readonly#symbol   = '⊘'
"     let g:airline#extensions#linecolumn#prefix = '¶'
"     let g:airline#extensions#paste#symbol      = 'ρ'
"     let g:airline_symbols.linenr    = '␊'
"     let g:airline_symbols.branch    = '⎇'
"     let g:airline_symbols.paste     = 'ρ'
"     let g:airline_symbols.paste     = 'Þ'
"     let g:airline_symbols.paste     = '∥'
"     let g:airline_symbols.whitespace = 'Ξ'
" else
"     let g:airline#extensions#tabline#left_sep = ''
"     let g:airline#extensions#tabline#left_alt_sep = ''
"     let g:airline_left_sep = ''
"     let g:airline_left_alt_sep = ''
"     let g:airline_right_sep = ''
"     let g:airline_right_alt_sep = ''
"     let g:airline_symbols.branch = ''
"     let g:airline_symbols.readonly = ''
"     let g:airline_symbols.linenr = ''
" endif

" function
""" xaml
"augroup MyXML
"    autocmd!
"    autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
"    autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
"augroup END

" "" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
" augroup vimrc-sync-fromstart
"     autocmd!
"     autocmd BufEnter * :syntax sync maxlines=200
" augroup END

" "" Remember cursor position
" augroup vimrc-remember-cursor-position
"     autocmd!
"     autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" augroup END

" "" txt
" augroup vimrc-wrapping
"     autocmd!
"     autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
" augroup END
" if !exists('*s:setupWrapping')
"     function s:setupWrapping()
"         set wrap
"         set wm=2
"         set textwidth=79
"     endfunction
" endif

" "" make/cmake
" augroup vimrc-make-cmake
"     autocmd!
"     autocmd FileType make setlocal noexpandtab
"     autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
" augroup END

" "" python
" augroup vimrc-python
"     autocmd!
"     autocmd FileType python setlocal
"                 \ formatoptions+=croq softtabstop=4
"                 \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
" augroup END

" コマンドモードに簡単に入れるように
" nnoremap ; :


"escを押した時の挙動 2019-06-11 追記
inoremap <ESC> <ESC>:set iminsert=0<CR>  
" ESCでIMEを確実にOFF"
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


" set relativenumber


"<c-r>: redoが覚え辛いので変更
nnoremap U <c-r>
"自然なキーマップで移動量拡張
" nnoremap J 10<Down>
" nnoremap K 10<Up>

nnoremap J gT
nnoremap L gt


"for Python in vscode
"マークダウン追記 iで一旦インサートモードへ
nnoremap <Leader>l i# %% [markdown]<CR># ## <ESC>

"print追記
nnoremap <Leader>p iprint()<ESC>i

"リスト内記法

noremap <Leader>[ i[i for i in ]<ESC>i

"https://qiita.com/iwaseasahi/items/a45b99a484966662adbe
"クリップボード連携[重要]
set clipboard+=unnamed

"使えそうなものを再度拝借
"https://qiita.com/ulwlu/items/98901f4c4f0683e7aa57

nnoremap <Leader>qqq :q!<CR>

"" split
nnoremap <Leader>s :<C-u>new<CR>
nnoremap <Leader>v :<C-u>vnew<CR>

"" Tabs
nnoremap <c-n> :tabnew<CR>

"" 検索
vnoremap <Leader><Leader> :%s/
nnoremap <Leader><Leader> :%s/
" ポップアップでターミナルウインドウ起動
" https://qiita.com/gorilla0513/items/f59e54606f6f4d7e3514
" command! Terminal call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0)/2, minheight: &lines/2 })

"Terminal 最下部に表示
" https://knowledge.sakura.ad.jp/23018/
nnoremap <Leader>t :bo terminal<CR>
nnoremap <Leader><Leader>t :vert terminal<CR>

" https://knowledge.sakura.ad.jp/23018/
nnoremap <Leader>vt :vert terminal<CR>

" マークダウン速記用
nnoremap - 0i- <ESC>
nnoremap # 0i# <ESC>
nnoremap ## 0i## <ESC>
nnoremap ### 0i### <ESC>


vnoremap - 0<S-i>- <ESC>
vnoremap # 0<S-i># <ESC>
vnoremap ## 0<S-i>## <ESC>
vnoremap ### 0<S-i>### <ESC>

"折りたたみ
" nnoremap ;; zf
" vnoremap ;; zf

"カラースキーム関係は後ろの方に入れていないとエラーになる???
"https://rcmdnk.com/blog/2017/07/18/computer-vim/
" シンタックスハイライトの有効化
syntax on
"カラースキーム指定
colorscheme onedark

" 自動で日付挿入
" https://note103.hateblo.jp/entry/2016/12/30/092647
" :w 版
" function! s:wsave()
"   execute ":w ~/mx/".strftime('%Y-%m-%d-%H-%M-%S').".txt"
" endfunction
" nnoremap <silent> <Leader><Leader>w :<C-u>call <SID>wsave()<CR>
" " :f 版
" function! s:fsave()
"   execute ":f ~/mx/".strftime('%Y-%m-%d-%H-%M-%S').".txt"
" endfunction
" nnoremap <silent> <Leader><Leader>f :<C-u>call <SID>fsave()<CR>
"
function! s:newfile(title)
  execute ":f ~/mx/".strftime('%Y-%m-%d-%H-%M-%S').a:title.".md"
endfunction
nnoremap <Leader>nf :<C-u>call <SID>newfile("-")<Left><Left>


" vimrc再読込　うまく動かない
nnoremap <Leader>rc :source ~.vimrc<CR>

" https://qiita.com/mathbbN/items/d76bb8785f89652fb419
" set foldtext=getline(v:foldstart)
" set fillchars=fold:\ 
" au Colorscheme * hi Folded ctermfg=HotPink guifg=HotPink

" https://stackoverflow.com/questions/33281187/how-to-change-the-way-that-vim-display-those-collapsed-folded-lines/33281531
" function! MyFoldText()
"       let nblines = v:foldend - v:foldstart + 1
"       let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
"       let line = getline(v:foldstart)
"       let comment = substitute(line, '/\*\|\*/\|{{{\d\=', ', 'g')
"       let expansionString = repeat(".", w - strwidth(nblines.comment.'"'))
"       let txt = '"' . comment . expansionString . nblines
" return txt
" endfunction
" set foldtext=MyFoldText()

" https://qiita.com/koara-local/items/52d94b8ab72d654bcd92
" auto reload .vimrc
" augroup source-vimrc
"   autocmd!
"   autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
"   autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
" augroup END

" Source the vimrc file after saving it
" https://coderwall.com/p/iw-tmg/auto-reload-vimrc-after-write
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

set foldtext=getline(v:foldstart)
hi Folded ctermfg=grey



"================================================
"Ranger ranger-explorer.vim
nnoremap <silent><Leader>r :RangerOpenCurrentFile<CR>
"autocmd vimenter * RangerOpenCurrentFile
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | RangerOpenCurrentDir | endif
"nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
"nnoremap <silent><Leader>f :RangerOpenProjectRootDir<CR>

let g:nvim_ghost_use_script = 1
let g:nvim_ghost_python_ejecutable = '/usr/bin/python'


" macだと動かない
" nnoremap <C-CR> :QuickRun<CR>

" https://qiita.com/ahiruman5/items/4f3c845500c172a02935
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数


"indentline"
let g:indentLine_color_term =239
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '¦'


" vimrcを出す
nnoremap <leader>, :tabnew ~/.vimrc<CR>
" backspaceが効かない
set backspace=indent,eol,start



" http://miniman2011.blog55.fc2.com/blog-entry-293.html
let g:quickrun_config={'*': {'split': 'vertical'}}

" https://note.com/yasukotelin/n/na87dc604e042
" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

