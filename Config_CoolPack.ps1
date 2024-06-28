New-Item -ItemType Directory -Path "C:\Users\%username%\AppData\Roaming\IPU\CoolPack"
New-Item -ItemType Directory -Path "C:\Users\Default\AppData\Roaming\IPU\CoolPack"
Copy-Item -Path "Y:\Applications\Coolpack\CoolPack.ini" -Destination "C:\Users\%username%\AppData\Roaming\IPU\CoolPack" -Recurse -Force
Copy-Item -Path "Y:\Applications\Coolpack\CoolPack.ini" -Destination "C:\Users\Default\AppData\Roaming\IPU\CoolPack" -Recurse -Force
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Coolpack" -Value "C:\Program Files\CoolPack\CoolPack.exe"