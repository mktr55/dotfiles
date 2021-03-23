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


