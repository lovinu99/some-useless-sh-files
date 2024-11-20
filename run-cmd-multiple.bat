@echo off

for /d %%d in (*) do (
    echo:
    echo Folder: "%%d"
    echo Start
    cd "%%d"
    
    cd ..
    echo End
)