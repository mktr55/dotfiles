# set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

# abbr使い方
# https://qiita.com/wataash/items/ab0a8b86b60e782f537f

abbr -a ranger ranger-cd
abbr -a memo "vim + ~/mx/memo.md"

abbr -a f 'vim (fzf-tmux --preview "bat  --color=always --style=header,grid --line-range :100 {}")'
# abbr -a a z
abbr -a g "googler -n 3"

abbr -a l "ls -al |less"

function fish_user_key_bindings
  for mode in insert default visual
    fish_default_key_bindings -M $mode
  end
  fish_vi_key_bindings --no-erase
end

# https://qiita.com/jonpili/items/1b77a522895cbc9cb67f
#status --is-interactive; and source (rbenv init -|psub)

# neovimの設定ファイル配置場所
set -gx XDG_CONFIG_HOME "$HOME/.config"

set EDITOR vim
set -x BROWSER w3m

# https://qiita.com/kamykn/items/aa9920f07487559c0c7e
# fd - cd to selected directory


#https://qiita.com/ryicoh/items/2301a0c4488a22cfbbe2
#FZF_DEFAULT_COMMAND='fd --type f'
#FZF_CTRL_T_COMMAND='fd --type f'
#FZF_ALT_C_COMMAND='fd --type d'

# limelight

#
# https://qiita.com/kkenya/items/bfd081a6f0ed3043cbd7
#status --is-interactive; and rbenv init - | source


cd ~/mx

#source (conda info --root)/etc/fish/conf.d/conda.fish

source (conda info --root)/etc/fish/conf.d/conda.fish

tmux

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/kz/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

