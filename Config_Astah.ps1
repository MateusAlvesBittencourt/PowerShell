Remove-Item -Path "C:\Users\$env:USERNAME\Desktop\Astah Professional.lnk" -Force
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Astah Professional" -Value "C:\Program Files\astah-professional\astah-pro.exe"
Copy-Item -Path "Y:\Applications\Astah Professional\astah_professional_license.xml" -Destination "C:\Program Files\astah-professional\" -Recurse -Force
Expand-Archive -Path "Y:\Applications\Astah Professional\setup.zip" -DestinationPath "C:\Users\Default"
Expand-Archive -Path "Y:\Applications\Astah Professional\setup.zip" -DestinationPath "C:\Users\$env:USERNAME"