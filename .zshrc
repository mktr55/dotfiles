#for neovim
export XDG_CONFIG_HOME="$HOME/.config"

#w3m for defult browser
export BROWSER=w3m

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# #powerline
# function powerline_precmd() {
#     PS1="$(~/.local/bin/powerline-shell --shell zsh $?)"
# }
# 
# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }
# 
# if [ "$TERM" != "linux" ]; then
#     install_powerline_precmd
# fi

#alias
alias g="googler -n 3"


# Compatible with ranger 1.4.2 through 1.7.*
#
# Automatically change the directory in bash after closing ranger
#
# This is a bash function for .bashrc to automatically change the directory to
# the last visited one after ranger quits.
# To undo the effect of this function, you can type "cd -" to return to the
# original directory.

function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

# This binds Ctrl-O to ranger-cd:
#bind '"\C-o":"ranger-cd\C-m"'

#OFFICEパス追加
#export PATH=$PATH:/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Office/Office15


# 追加PATH関連
#alias ppt='POWERPNT.EXE'
#alias excel='EXCEL.EXE'
#alias word='WINWORD.EXE'
#alias open='wsl-open'
alias acrobat='open -a Adobe\ Acrobat'





# ------------------------------------
# 2019-07-17 追記 ranger-cd https://syossan.hateblo.jp/entry/2017/02/04/192111
# ------------------------------------
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/local/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
        if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
                cd -- "$(cat "$tempfile")"
                fi
                rm -f -- "$tempfile"
            }

            bindkey -s '^o' 'ranger-cd^M'

# ranger-cdエイリアス
alias ranger='ranger-cd'
# # openコマンドでexplorerを開けるように
# function open {
#     pwd | sed -e "s;/mnt/c;C:;" -e "s;\/;\\\\\\\\;g" | xargs explorer.exe
# }



# 初回シェル時のみ tmux実行 --> 動かない
if [ $SHLVL = 1 ]; then
    tmux a
fi


# trash-putコマンド関連 ゴミ箱 rangerでは動かない??
if type trash-put &> /dev/null
then
        alias rm=trash-put
fi


#mac ssh
#シェルコードのパスを記載予定

#Kドライブマウント
alias kdrive="sudo mount -t drvfs K: /mnt/kdrive"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/kz/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/kz/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/kz/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/kz/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
#
# export PATH="/usr/local/sbin:$PATH"
# source ~/anaconda3/etc/profile.d/conda.sh


# added by Anaconda3 5.1.0 installer
export PATH="/Users/kz/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
    else
        if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
                . "/opt/anaconda3/etc/profile.d/conda.sh"
                    else
                            export PATH="/opt/anaconda3/bin:$PATH"
                                fi
                                fi
                                unset __conda_setup
                                # <<< conda initialize <<<

# ---------------------
# 起動時にtmux起動  https://qiita.com/fieldville/items/e24500165be947db8eaa
# ---------------------
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux


# Starship
eval "$(starship init zsh)"