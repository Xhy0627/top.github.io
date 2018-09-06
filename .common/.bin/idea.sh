#!/bin/bash
if [ -z "$IDEA_HOME" ]; then
  echo ERROR: cannot start IntelliJ IDEA.
  echo No IDEA_HOME found.
  exit 1
fi
echo "IDEA_HOME:$IDEA_HOME"

echo 'fs.inotify.max_user_watches = 524288' > /etc/sysctl.d/idea.conf
sysctl -p --system

IDEA_CONFIG=$(cd $(dirname "$IDEA_PROPERTIES")/config;pwd)
IDEA_COMMON_CONFIG=$(cd "$HOME/.IntelliJIdea/config";pwd)
fnameArray=(codestyles consoles fileTemplates inspection jdbc-drivers keymaps)
for fname in ${fnameArray[@]}
do
  cd $IDEA_CONFIG && rm -rf $fname && ln -s $IDEA_COMMON_CONFIG/$fname
done

export _JAVA_OPTIONS="-Didea.home=$IDEA_HOME $_JAVA_OPTIONS"
exec $IDEA_HOME/bin/idea.sh "$@"
