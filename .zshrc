# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/david/.oh-my-zsh

# ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Personal aliases
alias c='clear'
alias ytdl='youtube-dl -x --audio-format mp3 --audio-quality 0'

# Use vi mode in the shell
bindkey -v
bindkey -M vicmd '/' history-incremental-search-backward

# Rbenv init
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
