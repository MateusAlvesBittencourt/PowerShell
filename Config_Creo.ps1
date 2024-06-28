Copy-Item -Path "Y:\Applications\Creo\config.pro" -Destination "C:\Program Files\PTC\Creo 7.0.1.0\Common Files\text" -Recurse -Force
New-Item -ItemType Directory -Path "C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Direct 7.0.1.0.lnk" -Destination "C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Distributed Batch 7.0.1.0.lnk" -Destination"C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Layout 7.0.1.0.lnk" -Destination "C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Modelcheck 7.0.1.0.lnk" -Destination"C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Parametric 7.0.1.0.lnk" -Destination "C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo Simulate 7.0.1.0.lnk" -Destination "C:\Users\Public\Desktop\PTC Creo"
Move-Item -Path "C:\Users\Public\Desktop\Creo UI Editor 7.0.1.0.lnk" -Destination "C:\Users\Public\Desktop\PTC Creo"
Remove-Item -Path "C:\Users\Public\Desktop\Creo UI Editor 7.0.1.0.lnk" -Force