@echo off
echo Current directory: %CD%
echo Full path to batch file: %~f0
echo Directory of batch file: %~dp0
echo Attempting to list directory contents:
dir /b "%~dp0"
echo.
echo Attempting to open PDF:
start "" "%~dp0BenefitsJDPhotoVideoUNQILOQ42024.pdf"
