@ECHO off
chcp 65001>NUL

REM w3x文件名 不含后缀
SET w3x_basename=test
SET w3x_extname=.w3x

REM 变量定义
SET src=lni
SET temp=out
SET obj=%w3x_basename%_obj%w3x_extname%
SET dest=%w3x_basename%%w3x_extname%
setlocal enabledelayedexpansion
FOR /F "tokens=2,3,4 delims=/ " %%i IN ("%date%") DO (
    set year=%%i&set month=%%j&set day=%%k
)
FOR /F "delims=:., tokens=1,2,3 " %%i IN ("%time%") DO (
    set h=00%%i&set m=00%%j&set s=00%%k
    set h=!h: =0!&set m=!m: =0!&set s=!s: =0!
    set h=!h:~-2,2!&set m=!m:~-2,2!&set s=!s:~-2,2!
)
SET "time_string=!year!!month!!day!!h!!m!!s!"
setlocal disabledelayedexpansion
SET dest_bak=%w3x_basename%_%time_string%%w3x_extname%



REM MAIN TASKS:

REM 创建 backup 文件夹
IF not EXIST backup (
    ECHO mkdir backup ...
    mkdir backup
    ECHO.
)

REM ECHO Convert lni to w3x ...
REM ECHO.

REM 删除残余的 test_obj.w3x 文件
IF EXIST "%obj%" (
    DEL "%obj%"
    REM 删除失败!
    IF EXIST "%obj%" (
        ECHO %obj% 正被占用! 请关闭占用程序后重试!
        ECHO 
        timeout /t 2 /NOBREAK > NUL
        exit 1
    )
)

REM 测试 test.w3x 是否被占用
IF EXIST %dest% (
    REN %dest% %dest%
    IF ERRORLEVEL 1 (
        ECHO %dest% 正被占用! 请关闭占用程序后重试!
        ECHO 
        timeout /t 2 /NOBREAK > NUL
        EXIT 1
    )
    REM IF ERRORLEVEL 0 GOTO TASKS
)

REM :TASKS

REM w3x to lni
SET FLAG=true
IF %FLAG%==true (
    REM w2l version
    w2l obj %src% %obj%

    IF EXIST "%obj%" (
        REM w3x 生成成功!
        REM 移动 test.w3x 至 backup 文件夹 并重命名
        SET FLAG=false
        REM ECHO %fname%
        IF EXIST %dest% (
            REM MOVE 操作 文件不存在或者被占用时返回1 成功移动文件返回0
            REM ECHO MOVE %dest% backup\%dest_bak%
            MOVE %dest% backup\%dest_bak% > NUL

            IF ERRORLEVEL 1 (
                REM w3x 文件被占用 退出任务,返回错误码1
                SET FLAG=false
                ECHO 
                timeout /T 2 /NOBREAK > NUL
                REM ECHO file %dest% is using!
                IF EXIST "%obj%" (
                    DEL "%obj%"
                    REM 删除失败退出脚本
                    IF EXIST "%obj%" (
                        ECHO 
                        timeout /T 2 /NOBREAK
                        exit 1
                    )
                )
                exit 1
            )
            IF ERRORLEVEL 0 (
                REM 成功备份文件
                SET FLAG=true
            )
            
            REM ECHO %ERRORLEVEL%
        ) else (
            SET FLAG=true
        )
        REM ECHO.

        REM timeout /t 2 /NOBREAK
        ren "%obj%" %dest%
    ) else (
        ECHO %dest% 无法正确生成! 可能是 Lni 存在致命错误!
        ECHO 
        timeout /t 2 /NOBREAK > NUL
        exit 11
    )
    REM w2l log
)