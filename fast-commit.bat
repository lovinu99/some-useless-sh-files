@echo off
setlocal


:: Use PowerShell to open a folder selection dialog and capture the output
for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms; $dialog = New-Object System.Windows.Forms.FolderBrowserDialog; if ($dialog.ShowDialog() -eq 'OK') { $dialog.SelectedPath }"`) do set "folderPath=%%i"

:: Check if folderPath is set and display it
if defined folderPath (
    echo Selected folder: %folderPath%
) else (
    echo No folder selected.
)

:: Change this to your Git repository path
echo "%folderPath%"

:: Change directory to the Git repository
cd /d "%folderPath%"
if errorlevel 1 (
    echo Failed to change directory. Check if the path is correct.
    exit /b 1
)

:: Stage all changes
git add .
if errorlevel 1 (
    echo Failed to stage changes.
    exit /b 1
)

:: Prompt for commit message
set /p commitMessage="Enter commit message: "
if "%commitMessage%"=="" (
    echo No commit message provided. Exiting.
    exit /b 1
)

:: Commit changes
git commit -m "%commitMessage%"
if errorlevel 1 (
    echo Failed to commit changes.
    exit /b 1
)

:: Push changes to the remote repository
git push
if errorlevel 1 (
    echo Failed to push changes.
    exit /b 1
)

echo Changes committed and pushed successfully.
endlocal
pause
