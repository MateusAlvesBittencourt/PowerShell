#Setando o ExecutionPolicy
Set-ExecutionPolicy bypass -Force

#Criando o mapa de teclas no registro para notebooks E14
$regPath1 = "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout"
$regPath2 = "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layouts"
# Define the Scancode Map value as a byte array
$scancodeMap = [byte[]] (0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x73, 0x00, 0x1d, 0xe0, 0x00, 0x00, 0x00, 0x00)
# Set the Scancode Map value in the first registry path
Set-ItemProperty -Path $regPath1 -Name "Scancode Map" -Value $scancodeMap
# Set the Scancode Map value in the second registry path
Set-ItemProperty -Path $regPath2 -Name "Scancode Map" -Value $scancodeMap

#Criando chaves de registro para conectar o Wifi no método PEAP-MS-CHAP-v2 notebooks E14
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard"
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" -Name "LsaCfgFlags" -Value 0 -PropertyType DWord
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "LsaCfgFlags" -Value 0 -PropertyType DWord
