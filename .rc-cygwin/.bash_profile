SHOME='E:\a0a\ileler\configs\..\..\'
#!/usr/bin/env sh
cd ../
source ./ext-cygwin
export UETYPE=CYGWIN


#global
export __=$(pwd)
export HOME=$__/.rc-cygwin
export HOMEPATH=$HOME
export USERPROFILE=$HOME
export APPDATA=$USERPROFILE/AppData/Roaming
export LOCALAPPDATA=$USERPROFILE/AppData/Local
export __LPATH__=$(cd "$HOME.local";pwd)
export __RPATH__=$(cd "$HOME/../";pwd)


#EXT DIR SET
export _USER_EXT_=$__/.ext
fnameArray=(.IntelliJIdea)
for fname in ${fnameArray[@]}
do
  cd $HOME && rm -rf $fname && ext-link $fname $_USER_EXT_/$fname && cd -
done

#COMMON DIR SET
export _USER_COMMON_=$__/.common
for fname in $(ls -A $_USER_COMMON_)
do
  cd $HOME && rm -rf $fname && ext-link $fname $_USER_COMMON_/$fname && cd -
done
cd /etc/setup/ && rm -rf installed.db && ext-link installed.db $HOME/installed.db && cd -


un=`id -u -n`
echo "none / cygdrive binary,user,noacl,posix=0 0 0" > /etc/fstab
mkdir -p /home && cd /home && rm -rf $un && ext-link $un $HOME && cd -
chown -R $un /home/$un/.ssh/config && chmod -R 0600 /home/$un/.ssh


#some software need.(eg: electron)
mkdir -p $APPDATA
export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/

#nodejs
export _NODEJS_=node-v8.11.1-win-x64
export NODE_HOME=$__LPATH__/bins/.win/nodejs
export npm_config_cache=`ext-winpath $NODE_HOME/npm-cache`
export npm_config_prefix=`ext-winpath $NODE_HOME/npm-global`
export NODE_PATH=`ext-winpath $HOME/.node_modules`:$npm_config_prefix\\node_modules:`ext-winpath $NODE_HOME/$_NODEJS_/node_modules`
export NODE_MODULES=$NODE_PATH

#python
#export _PYTHON_=Python36-32
#export PYTHON_HOME=$__LPATH__/bins/Python
#export PYTHON_SCRIPTS=Scripts
#export PYTHONHOME=$PYTHON_HOME/$_PYTHON_
export PYTHON_SITE_PACKAGE_PATH=$__RPATH__/ws/.local
export PYTHONPATH=$PYTHON_SITE_PACKAGE_PATH
#export PYTHON=u:\\u~u\\a0a\\bins\\Cygwin\\bin\\python2.7.exe

#java
export JAVA_HOME=$__LPATH__/bins/.win/java/jdk1.8.0_171
export _JAVA_OPTIONS="-Duser.home='`ext-winpath $HOME`' -Droot.path='`ext-winpath $__RPATH__`' $_JAVA_OPTIONS"
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar

#idea
export IDEA_PROPERTIES=`ext-winpath $HOME/.IntelliJIdea/idea.properties`

#gradle
export GRADLE_HOME=$__LPATH__/bins/.win/gradle/gradle-4.2.1

#maven
export MAVEN_HOME=$__LPATH__/bins/.win/maven/apache-maven-3.5.0

#groovy
export GROOVY_HOME=$__LPATH__/bins/.win/groovy/groovy-2.4.13

#path
export PATH=$GROOVY_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$JAVA_HOME/bin:$PYTHONHOME:$PYTHONHOME/$PYTHON_SCRIPTS:$NODE_HOME/$_NODEJS_:$NODE_HOME/npm-global:$NVM_HOME:$HOME/.bin:$PATH

echo "current PATH:"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>"
echo $PATH
echo "<<<<<<<<<<<<<<<<<<<<<<<<<"

source ~/.bashrc

export HOMEPATH=`ext-winpath $HOME`
export USERPROFILE=`ext-winpath $HOME`
export APPDATA=`ext-winpath $USERPROFILE\\\\AppData\\\\Roaming`
export LOCALAPPDATA=`ext-winpath $USERPROFILE\\\\AppData\\\\Local`

source ~/.git-prompt.sh
export PS1="\[\033]0;\$TITLEPREFIX:\${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h\[\033[35m\]:\[\033[33m\]\w\[\033[36m\]\`__git_ps1\`\[\033[0m\]\n$"
export LC_ALL="en_US.UTF-8"
