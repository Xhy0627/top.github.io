@echo off

set "U=U:"
set "RC=.rc-cygwin"
set "LC=.rc-local"
set "EC=.rc-ext"
set "a0a=a0a"

set "ROOT=u~u"
set "CROOT=%~d0\#-#"
set "MROOT=%U%\%ROOT%"
set "UHOME=%MROOT%\%a0a%"
set "CHOME=%CROOT%\%a0a%"
::set "SHOME=%~dp0\"
set "SHOME=%~dp0\..\"
set "RHOME=%~dp0\%RC%"
set "LHOME=%RHOME%\%LC%"
set "EHOME=%RHOME%\%EC%"


if exist %CROOT% (
    rd /s /q %CROOT%
)

if not exist %CROOT% (
    mkdir %CROOT%
)


if exist %U% (
    if "%~d0"=="%U%" (
        echo "U:"存在且就是当前盘
    ) else (
        echo "U:"存在但不是当前盘
    )
    if exist %MROOT% (
        RD /S /Q %MROOT%
    )
) else (
    echo "U:"不存在
    subst %U% /D
    subst %U% %CROOT%    
)

mklink /j %MROOT% %CROOT%
mklink /j %CHOME% %SHOME%

if exist %EHOME% (
    RD /S /Q %EHOME%
)
if exist %LHOME% (
    RD /S /Q %LHOME%
)

set /p _lhome="Enter LHOME PATH:["
echo %_lhome%]
if not defined _lhome (
    set _lhome=empty
)
if exist %_lhome% (
    set __lhome=%_lhome%
) else (
    set __lhome=%UHOME%
)
mklink /j %LHOME% %__lhome%
mklink /j %EHOME% %~dp0\.ext

rem UHOME[U:\!!KERWIN!!\a0a]
echo UHOME[%UHOME%]

echo %LHOME%[%__lhome%]
echo %EHOME%[%~dp0\.ext]


cd /d %UHOME%

::cat $(pwd)/.rc/.sshd_config_u > /etc/ssh/sshd_config && 
::echo 'PermitUserEnvironment yes' >> /etc/ssh/sshd_config && 
set "HOME=%RHOME%" && cd.>%RHOME%\.bash_profile && start "" "%LHOME%\bins\cygwin64\bin\mintty.exe" -e /usr/bin/bash --login -i -c "export HOME=$(pwd) && echo \"SHOME='%SHOME%'\" > ~/.bash_profile && cat $HOME/../env-cygwin >> ~/.bash_profile && /usr/bin/bash --login -i"



::@echo off && %~dp0\a0a\ileler\configs\upan\start-cygwin.bat > a0a-cygwin.log
