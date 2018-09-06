@ECHO OFF
IF NOT EXIST "%IDEA_HOME%" (
  ECHO ERROR: cannot start IntelliJ IDEA.
  ECHO No IDEA_HOME found. 
  EXIT /B
)
ECHO "IDEA_HOME:%IDEA_HOME%"

SET _JAVA_OPTIONS=-Didea.home='%IDEA_HOME%' %_JAVA_OPTIONS%
%IDEA_HOME%\bin\idea.bat %*
