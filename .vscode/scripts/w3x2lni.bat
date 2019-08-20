@echo off
chcp 65001 > NUL

rem w3x文件名 不含后缀
set w3x_basename=test
set w3x_extname=.w3x

rem 变量定义
set src=%w3x_basename%%w3x_extname%
set dest=lni


rem MAIN TASKS:
REM echo Convert w3x to lni ...
REM echo.

REM lni to w3x
REM w2l version
w2l lni %src% %dest%
REM echo ERRORLEVEL: %errorlevel%
REM w2l log