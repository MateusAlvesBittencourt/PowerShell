Expand-Archive -Path "Y:\Applications\ZoomIt\setup.zip" -DestinationPath "C:\Program Files"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Zoomit" -Value "C:\Program Files\Zoomit\ZoomIt.exe"