# Path to your oh-my-zsh installation.
ZSH=/opt/homebrew/share/oh-my-zsh/
export ZSH="$HOME/.oh-my-zsh"

# Variables for source files
PLUGIN_BASE="/opt/homebrew/share"
FZF_BASE="/opt/homebrew/opt/fzf/shell"

# Zsh theme
source $PLUGIN_BASE/powerlevel10k/powerlevel10k.zsh-theme

# Homebrew
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
