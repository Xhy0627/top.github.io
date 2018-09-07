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

#java
_JAVA_LIBS="$__EPATH__/tools/java-libs"
_CLASSPATH=""
if [ -d $_JAVA_LIBS ] ; then
    for jarname in $(ls -A $_JAVA_LIBS/)
    do
        _CLASSPATH=$_CLASSPATH:$_JAVA_LIBS/$jarname
    done
fi
export JAVA_HOME=$__LBINS__/java/jdk1.8.0_171
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
export _JAVA_OPTIONS="-Duser.home=$HOME -Droot.path=$__RPATH__ $_JAVA_OPTIONS"
export PATH=$JAVA_HOME/bin:$PATH

#groovy
export GROOVY_HOME=$__LBINS__/groovy/.groovy
export PATH=$GROOVY_HOME/bin:$PATH

#gradle
export GRADLE_HOME=$__LBINS__/gradle/.gradle
export PATH=$GRADLE_HOME/bin:$PATH

#maven
export MAVEN_HOME=$__LBINS__/maven/.maven
export MAVEN_GS=$MAVEN_HOME/conf/settings.xml
rm -rf $MAVEN_GS && ln -s $HOME/.m2/settings-global.xml $MAVEN_GS
export PATH=$MAVEN_HOME/bin:$PATH

#ideaj
export IDEA_CLASSPATH=$CLASSPATH
export IDEA_PROPERTIES=$HOME/.IntelliJIdea4U/idea.properties
export IDEA_VM_OPTIONS=$HOME/.IntelliJIdea4U/config/idea64.vmoptions

export JENKINS_HOME=$__EPATH__/.jenkins
export JENKINS_URL=http://admin:admin123456@localhost:8080

#nodejs
export NODE_DIR=$__LBINS__/nodejs
export NODE_HOME=$NODE_DIR/node-v8.11.1-linux-x64
export npm_config_cache=$NODE_DIR/npm-cache
export npm_config_prefix=$NODE_DIR/npm-global
export NODE_PATH=$HOME/.node_modules:$npm_config_prefix/node_modules:$NODE_HOME/node_modules
export NODE_MODULES=$NODE_PATH
export PATH=$NODE_HOME/bin:$npm_config_prefix/bin:$PATH

#pip
export PIP_CONFIG_FILE=$HOME/.pip/pip.conf

#go
export GOROOT=$__LBINS__/go
export PATH=$GOROOT/bin:$PATH


export PATH=$HOME/.bin:$PATH



source ~/.git-prompt.sh
source ~/.bashutils
source ~/.alias
export PS1="\[\033]0;\$TITLEPREFIX:\${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h\[\033[35m\]:\[\033[33m\]\w\[\033[36m\]\`__git_ps1\`\[\033[0m\]\n$"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
