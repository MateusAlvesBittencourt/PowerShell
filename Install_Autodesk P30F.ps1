Expand-Archive -Path "Y:\Applications\Autodesk P30F\setup.zip" -DestinationPath "C:\Temp"
cmd.exe /c "C:\Temp\image\Installer.exe" -i deploy --offline_mode -q -o "C:\Temp\image\Collection.xml" --installer_version "2.4.0.141"
Remove-Item -Path "C:\Temp\image" -Force
New-Item -ItemType Directory -Path "C:\Users\Public\Desktop\Autodesk"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Autodesk\AutoCAD" -Value "C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe"
Move-Item -Path "C:\Users\Public\Desktop\3ds Max 2024.lnk" -Destination "C:\Users\Public\Desktop\Autodesk"
Move-Item -Path "C:\Users\Public\Desktop\Autodesk Inventor Professional 2024.lnk" -Destination "C:\Users\Public\Desktop\Autodesk"
Move-Item -Path "C:\Users\Public\Desktop\Revit 2024.lnK" -Destination "C:\Users\Public\Desktop\Autodesk"