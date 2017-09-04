SHOME='I:\a0a\ileler\configs\upan\..\..\..\'
#!/usr/bin/env sh
source ./ext


#global
export __=$(pwd)
export HOME=$__/.rc
export HOMEPATH=$HOME
export USERPROFILE=$HOME
export APPDATA=$USERPROFILE/AppData/Roaming

#some software need.(eg: electron)
mkdir -p $APPDATA

#nodejs
export _NODEJS_=node-v6.10.0-win-x64
export NODE_HOME=$__/bins/NodeJS
export npm_config_cache=$NODE_HOME/npm-cache
export npm_config_prefix=$NODE_HOME/npm-global
export NODE_PATH=$HOME/.node_modules:$npm_config_prefix/node_modules:$NODE_HOME/$_NODEJS_/node_modules
export NODE_MODULES=$NODE_PATH

#path
export PATH=$NODE_HOME/$_NODEJS_:$npm_config_prefix:$NVM_HOME:$PATH

echo "current PATH:"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>"
echo $PATH
echo "<<<<<<<<<<<<<<<<<<<<<<<<<"
