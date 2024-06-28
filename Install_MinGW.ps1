Expand-Archive -Path "Y:\Applications\MinGW\setup.zip" -DestinationPath "C:\Program Files"
cmd.exe /c "setx PATH '%PATH%;C:\Program Files\MinGW\bin' /m"