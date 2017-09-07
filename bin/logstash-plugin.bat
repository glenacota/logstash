@echo off
setlocal enabledelayedexpansion
set params='%*'

call "%~dp0setup.bat" || exit /b 1
if errorlevel 1 (
	if not defined nopauseonerror (
		pause
	)
	exit /B %ERRORLEVEL%
)

%JRUBY_BIN% %jruby_opts% "%LS_HOME%\lib\pluginmanager\main.rb" %*

endlocal