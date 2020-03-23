@echo off
setlocal
pushd "%~dp0"

set selfname=%~n0
set ret_success=echo successed!
set ret_fail=echo error! %~n0

if "%1"=="up" (
    call :up
    exit /b %ret_success%
)

if "%1"=="down" (
    call :down
    exit /b %ret_success%
)

if "%1"=="ps" (
    call :ps
    exit /b %ret_success%
)

if "%1"=="build" (
    call :build
    exit /b %ret_success%
)

if "%1"=="debug" (
    call :debug
    exit /b %ret_success%
)

if "%1"=="login" (
    call :login
    exit /b %ret_success%
)

if "%1"=="remort" (
    call :remort
    exit /b %ret_success%
)

if "%1"=="help" (
    call :usage
    exit /b %ret_success%
)

if "%2"=="" (
    call :abort Parameter `op2` required. you should command 'cmd help'.
    exit /b %ret_fail%
)

exit /b %ret_fail%

rem ----------
rem subrootins
rem ----------

:usage
echo [Usage]
echo %selfname%                 : This is NuxtApp Project's commands. If you have any questions, you ask to 'yamauchi'. 
echo %selfname% help            : Show the usage.
echo %selfname% up              : Docker containers up.
echo %selfname% down            : Docker containers down. If you stop working, you should command this. 
echo %selfname% ps              : Check docker container configuration.
echo %selfname% build           : Setup docker image and container.
echo %selfname% debug           : Docker containers up and Output log.
echo %selfname% login           : Login to application container.
echo %selfname% remort          : Login to VPS environment with SSH.
exit /b

:abort
echo (%selfname%) Error! %*
exit /b

:up
docker-compose up -d
exit /b

:down
docker-compose down
%ret_success%
exit /b

:ps
docker-compose ps
exit /b

:build
docker-compose build
docker-compose up -d
%ret_success%
exit /b

:debug
docker-compose up
%ret_success%
exit /b

:login
docker-compose exec app bash
exit /b

:remort
docker-compose exec app ssh strategy
exit /b