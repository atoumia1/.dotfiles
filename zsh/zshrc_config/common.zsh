export GPG_TTY=$(tty)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
fi

# Open file from fuzzy find in editor
se() { wd=$(pwd); cd ~; $EDITOR $(fzf --height 40% --reverse ); cd $wd }

# Source files
source $PLUGIN_BASE/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_BASE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $FZF_BASE/completion.zsh
source $FZF_BASE/key-bindings.zsh
source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias sudo="sudo "
alias rm="echo rm is blocked, use trash instead!"
alias jupyter="ssh -N -L 127.0.0.1:8888:192.168.1.108:8888 <my_ip> -p 2222"
alias vim="nvim"

# Environment Variables
export SUDO_EDITOR="nvim"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
