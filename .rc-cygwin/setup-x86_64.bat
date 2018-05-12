@echo off
set chome=u:/u~u/a0a/bins/cygwin64/
set /p _chome="Enter CHOME PATH:"
if not defined _chome (
	set _chome=empty
)
if exist %_chome% (
	set chome=%_chome%
)
set chome=%chome%/bins/cygwin64/
.\setup-x86_64.exe -R %chome% -l %chome%/local_package/ -s http://mirrors.163.com/cygwin/ %*