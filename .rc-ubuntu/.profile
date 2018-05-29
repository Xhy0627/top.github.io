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
export __EPATH__=$(cd -P "$HOME/../.ext";pwd)
export __LPATH__=$(cd "$HOME.local";pwd)
export __RPATH__=$(cd "$HOME/../";pwd)

#java
_JAVA_LIBS="$__EPATH__/tools/java-libs"
_CLASSPATH=""
for jarname in $(ls -A $_JAVA_LIBS/)
do
    _CLASSPATH=$_CLASSPATH:$_JAVA_LIBS/$jarname
done
export JAVA_HOME=$__LPATH__/bins/.linux/java/jdk1.8.0_171
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$_CLASSPATH
export _JAVA_OPTIONS="-Duser.home=$HOME -Droot.path=$__RPATH__ $_JAVA_OPTIONS"
export PATH=$JAVA_HOME/bin:$PATH

#maven
export MAVEN_HOME=$__LPATH__/bins/.linux/maven/apache-maven-3.5.0
export PATH=$MAVEN_HOME/bin:$PATH

#ideaj
export IDEA_CLASSPATH=$CLASSPATH
export IDEA_PROPERTIES=$HOME/.IntelliJIdea4U/idea.properties
export IDEA_VM_OPTIONS=$HOME/.IntelliJIdea4U/config/idea64.vmoptions

#nodejs
export NODE_DIR=$__LPATH__/bins/.linux/nodejs
export NODE_HOME=$NODE_DIR/node-v8.11.1-linux-x64
export npm_config_cache=$NODE_DIR/npm-cache
export npm_config_prefix=$NODE_DIR/npm-global
export NODE_PATH=$HOME/.node_modules:$npm_config_prefix/node_modules:$NODE_HOME/node_modules
export NODE_MODULES=$NODE_PATH
export PATH=$NODE_HOME/bin:$npm_config_prefix/bin:$PATH



export PATH=$HOME/.bin:$PATH



source ~/.git-prompt.sh
source ~/.bashutils
source ~/.alias
export PS1="\[\033]0;\$TITLEPREFIX:\${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h\[\033[35m\]:\[\033[33m\]\w\[\033[36m\]\`__git_ps1\`\[\033[0m\]\n$"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
