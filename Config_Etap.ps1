New-Item -ItemType Directory -Path "C:\Users\%username%\AppData\Local\OTI"
New-Item -ItemType Directory -Path "C:\Users\Default\AppData\Local\OTI"
Copy-Item -Path "Y:\Applications\etap\OTI" -Destination "C:\Users\%username%\AppData\Local\OTI" -Recurse -Force
Copy-Item -Path "Y:\Applications\etap\OTI" -Destination "C:\Users\Default\AppData\Local\OTI" -Recurse -Force