set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

# abbr使い方
# https://qiita.com/wataash/items/ab0a8b86b60e782f537f

abbr -a ranger ranger-cd
abbr -a memo "vim + ~/mx/memo.md"


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

#EDITOR=nvim

# https://qiita.com/kamykn/items/aa9920f07487559c0c7e
# fd - cd to selected directory


#https://qiita.com/ryicoh/items/2301a0c4488a22cfbbe2
#FZF_DEFAULT_COMMAND='fd --type f'
#FZF_CTRL_T_COMMAND='fd --type f'
#FZF_ALT_C_COMMAND='fd --type d'

