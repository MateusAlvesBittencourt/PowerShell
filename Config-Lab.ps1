Copy-Item -Path "Y:\Scripts\PUCRS\layoutModification.xml" -Destination "C:\Users\Default\AppData\Local\Microsoft\Windows\Shell" -Recurse -Force
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "CleanupProfiles" -Value 7 -PropertyType Dword -Force
New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "dontdisplaylastusername" -Value 1 -PropertyType Dword -Force
Powercfg.exe -x -monitor-timeout-ac 20
Powercfg.exe -x -monitor-timeout-dc 20