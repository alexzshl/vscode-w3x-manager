@echo off
chcp 65001 > NUL

rem w3x文件名 不含后缀
set w3x_basename=test
set w3x_extname=.w3x

rem 变量定义
set src=%w3x_basename%%w3x_extname%
set dest=%w3x_basename%_slk%w3x_extname%

rem MAIN TASKS:
echo Convert w3x to slk ...
echo.

REM w3x to slk
w2l version
w2l slk %src% %dest%
echo ERRORLEVEL: %errorlevel%
REM w2l log