rem compile_all_in_dir
@echo off
for %%i in (*.rpf) do set fname=%%i & call :rename
goto :eof
:rename
echo %fname%
..\exe\compiler %fname%
