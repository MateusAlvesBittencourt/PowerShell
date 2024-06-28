Expand-Archive -Path "Y:\Applications\Cheddar\setup.zip" -DestinationPath "C:\Program Files"
Copy-Item -Path "C:\Program Files\Cheddar\Cheddar.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -Recurse -Force
Copy-Item -Path "C:\Program Files\Cheddar\Cheddar.lnk" -Destination "C:\Users\Public\Desktop" -Recurse -Force