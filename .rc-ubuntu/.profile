# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

echo 'hi~'

#__RPATH__=$(cd $(git rev-parse --show-toplevel)/../ && pwd)
export __LPATH__=$(cd "$HOME/.rc-local";pwd)
export __EPATH__=$(cd "$HOME/.rc-ext";pwd)
export __RPATH__=$(cd "$HOME/../";pwd)
export __LBINS__=$__LPATH__/bins/.linux

export PATH=$HOME/.bin:$PATH

source ~/.git-prompt.sh
source ~/.bashutils
source ~/.alias
export PS1="\[\033]0;\$TITLEPREFIX:\${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h\[\033[35m\]:\[\033[33m\]\w\[\033[36m\]\`__git_ps1\`\[\033[0m\]\n$"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source ~/.profile.java
source ~/.profile.python
source ~/.profile.nodejs
