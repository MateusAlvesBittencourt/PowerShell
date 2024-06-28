Remove-Item -Path "C:\Users\%username%\Desktop\PSIM12.0.3.lnk" -Recurse -Force
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\PSIM12.0.3" -Value "C:\Powersim\PSIM12.0.3_Demo\PSIM.exe"