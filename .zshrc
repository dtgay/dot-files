# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="sunrise"
ZSH_THEME="terminalparty"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting
# for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/oddshocks/.local/bin:/home/oddshocks/bin

# Enable virtualenv wrapper by adding to path
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/devel
source /usr/bin/virtualenvwrapper.sh

# Those aliases, dogg
alias psd='python setup.py develop'
alias psi='python setup.py install'
alias tp='trash-put'
alias gpr='git push --rebase'
alias :q=exit # lol

setopt nobeep # stop beeping at me

# Configure TrackPoint for vertical and horizontal scrolling
# Also enable middle button emulation (left- and right-click simultaneously)
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Middle Button Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Middle Button Timeout" 50

# Golang
export GOROOT=$HOME/go
export GOBIN=$GOROOT/bin
export GOARCH=amd64
export GOOS=linux
export PATH=$GOBIN:$PATH

# Fortune
if [ $(which fortune) ] # if fortune is installed (fortune-mod pkg. in Fedora)
then 
    if [ $(which cowsay) ]
    then
        fortune -a | cowsay # moo
    else
        
        fortune -a # display a fortune from all available maxims
    fi
fi
