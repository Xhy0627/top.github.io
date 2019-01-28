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

#android
export ANDROID_HOME=$__LBINS__/.android
export PATH=$ANDROID_HOME/platform-tools:$PATH

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
