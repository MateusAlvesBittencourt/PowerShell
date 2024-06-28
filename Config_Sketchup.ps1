Copy-Item -Path "Y:\Applications\Sketchup\SketchUp.lic" -Destination "C:\Program Files\SketchUp\SketchUp 2024" -Recurse -Force
New-Item -ItemType Directory -Path "C:\users\Public\desktop\SketchUp"
Move-Item -Path "c:\users\Public\desktop\SketchUp 2024.lnk" -Destination "C:\users\Public\desktop\SketchUp"
Move-Item -Path "c:\users\Public\desktop\Style Builder.lnk" -Destination "C:\users\Public\desktop\SketchUp"
Move-Item -Path "c:\users\Public\desktop\LayOut 2024.lnk" -Destination "C:\users\Public\desktop\SketchUp"
Expand-Archive -Path "Y:\Applications\Sketchup\setup.zip" -DestinationPath "C:\Users\Default\AppData\Roaming"