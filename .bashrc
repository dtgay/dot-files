# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

. /home/david/.bashrc-gitprompt
PATH=~/bin:$PATH
EDITOR=vim

# virtualenvwrapper stuff

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
