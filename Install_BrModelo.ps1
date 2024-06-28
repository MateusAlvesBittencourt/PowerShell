Expand-Archive -Path "Y:\Applications\BrModelo\setup.zip" -DestinationPath "C:\Program Files"
Copy-Item -Path "C:\Program Files\BrModelo\brModelo.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -Recurse -Force
Copy-Item -Path "C:\Program Files\BrModelo\brModelo.lnk" -Destination "C:\Users\Public\Desktop"