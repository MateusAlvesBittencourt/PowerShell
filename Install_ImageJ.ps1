Expand-Archive -Path "Y:\Applications\ImageJ\setup.zip" -DestinationPath "C:\Program Files"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\ImageJ" -Value "C:\Program Files\ImageJ\ImageJ.exe"