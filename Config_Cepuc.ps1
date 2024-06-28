Copy-Item -Path "Y:\Scripts\PUCRS\cepuc.jpg" -Destination "C:\Windows\Web\Screen" -Recurse -Force

New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Force

New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "Wallpaper" -Value "C:\Windows\Web\Screen\cepuc.jpg" -PropertyType String -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "WallpaperStyle" -Value 4 -PropertyType Dword -Force

reg load "HKU\Default_User" C:\Users\Default\ntuser.dat
New-ItemProperty -Path "Registry::HKEY_USERS\Default_User\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "Wallpaper" -Value "C:\Windows\Web\Screen\pucrs.jpg" -PropertyType String -Force
New-ItemProperty -Path "Registry::HKEY_USERS\Default_User\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "WallpaperStyle" -Value 4 -PropertyType Dword -Force
reg unload "HKU\Default_User"

New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Name "LockScreenImage" -Value "C:\Windows\Web\Screen\pucrs.jpg" -PropertyType String -Force
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Personalization" -Name "LockScreenOverlaysDisabled" -Value 1 -PropertyType Dword -Force

New-LocalUser -Name Evento -Password (ConvertTo-SecureString -AsPlainText 'Event@s1' -Force) -UserMayNotChangePassword -PasswordNeverExpires