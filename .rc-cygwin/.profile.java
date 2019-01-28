#java
export JAVA_HOME=$__LBINS__/java/.jdk
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
export _JAVA_OPTIONS="-Duser.home='`ext-winpath $HOME`' -Droot.path='`ext-winpath $__RPATH__`' $_JAVA_OPTIONS"
export PATH=$JAVA_HOME/bin:$PATH
export JAVA_HOME=`cygpath -aw $JAVA_HOME`
export CLASSPATH=`cygpath -pw $CLASSPATH`

#groovy
export GROOVY_HOME=$__LBINS__/groovy/.groovy
export PATH=$GROOVY_HOME/bin:$PATH

#gradle
export GRADLE_HOME=$__LBINS__/gradle/.gradle
export PATH=$GRADLE_HOME/bin:$PATH

#maven
export MAVEN_HOME=$__LBINS__/maven/.maven
cd $MAVEN_HOME/conf/ && rm -rf settings.xml && ext-link settings.xml $HOME/.m2/settings-global.xml && cd -
export PATH=$MAVEN_HOME/bin:$PATH

#idea
fnameArray=(.IntelliJIdea)
for fname in ${fnameArray[@]}
do
  cd $HOME && rm -rf $fname && ext-link $fname $__EPATH__/$fname && cd -
done
export IDEA_PROPERTIES=`ext-winpath $HOME/.IntelliJIdea/idea.properties`
