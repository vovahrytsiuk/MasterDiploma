@echo off
setlocal

set BUILD_TYPE=Debug
if "%~1" neq "" (
    if /I "%~1"=="Release" set BUILD_TYPE=Release
    if /I "%~1"=="Debug" set BUILD_TYPE=Debug
)

cd build/
cmake ../ -DCMAKE_BUILD_TYPE=%BUILD_TYPE%
cmake --build . --config %BUILD_TYPE%
cmake --install . --prefix "../" --config %BUILD_TYPE%

endlocal