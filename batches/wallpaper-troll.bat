:: Delete domain policy
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V Wallpaper /f

:: Copy image file to temp folder
COPY %1 %TEMP%\%1

:: Add wallpaper style as stretched (change it to 0 if you will)
REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /f /D 2

:: Configure mallpaper position on screen to be centered (change it to 1 if you will)
REG ADD "HKCU\Control Panel\Desktop" /V TileWallpaper /f /D 0

:: Add Wallpaper path
REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /f /D %TEMP%\%1 

:: Update halter params (refresh configs on screen)
%SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters