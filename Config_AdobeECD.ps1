
New-Item -ItemType Directory -Path "C:\Users\Public\Desktop\Adobe 2024"

New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe After Effects 2024" -Value "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\AfterFX.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Audition 2024" -Value "C:\Program Files\Adobe\Adobe Audition 2024\Adobe Audition.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Bridge 2024" -Value "C:\Program Files\Adobe\Adobe Bridge 2024\Adobe Bridge.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Creative Cloud" -Value "C:\Program Files\Adobe\Adobe Creative Cloud\ACC\Creative Cloud.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Dreamweaver 2021" -Value "C:\Program Files\Adobe\Adobe Dreamweaver 2021\Dreamweaver.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Illustrator 2024" -Value "C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Illustrator.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe InDesign 2024" -Value "C:\Program Files\Adobe\Adobe InDesign 2024\InDesign.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Lightroom Classic" -Value "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Media Encoder 2024" -Value "C:\Program Files\Adobe\Adobe Media Encoder 2024\Adobe Media Encoder.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Photoshop 2024" -Value "C:\Program Files\Adobe\Adobe Photoshop 2024\Photoshop.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Adobe 2024\Adobe Premiere Pro 2024" -Value "C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe"

New-Item -ItemType Directory -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"

Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe After Effects 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Audition 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Bridge 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Creative Cloud.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Dreamweaver 2021.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Illustrator 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe InDesign 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Lightroom Classic.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Media Encoder 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"
Move-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Pro 2024.lnk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe 2024"