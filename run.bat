@echo off
setlocal

REM Đọc nội dung Base64 từ tệp
set "base64Content="
for /f "usebackq delims=" %%A in ("C:\Users\Public\script_base64.txt") do set "base64Content=!base64Content!%%A"

REM Giải mã Base64 và lưu vào tệp tạm thời
powershell -command "[System.IO.File]::WriteAllBytes('C:\Users\Public\script_temp.bat', [System.Convert]::FromBase64String('%base64Content%'))"

REM Thực thi tệp batch tạm thời
call "C:\Users\Public\script_temp.bat"

REM Xóa tệp tạm thời
del "C:\Users\Public\script_temp.bat"

endlocal
