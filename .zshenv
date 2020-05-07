# added by Anaconda3 5.1.0 installer
export PATH="/Users/kz/anaconda3/bin:$PATH"


# PATH の設定（お好みで）
#export PATH="/usr/local/bin:$PATH"

# PATH の内容と同期している配列変数 path も使える
path=(
    ~/bin
    $path
)

# もし .zshenv を複数のマシンで共有していて、
# あるマシンには存在するが別のマシンには存在しないパスを PATH に追加したいなら、
# パスの後ろに (N-/) をつけるとよい
# こうすると、パスの場所にディレクトリが存在しない場合、パスが空文字列に置換される
# 詳細は `man zshexpn` の Glob Qualifiers を参照
path=(
    /machine1/only/bin(N-/)
    $path
)
