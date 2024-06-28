Add-Type -AssemblyName System.Windows.Forms

powershell.exe -windowstyle hidden "Driver Backup.ps1"

$Form = New-Object System.Windows.Forms.Form
$Form.Text = "DriverBackup"
$Form.Size = New-Object System.Drawing.Size(600,415)
$Form.Font = New-Object System.Drawing.Font("Century Gothic", 10)
$Form.StartPosition = "CenterScreen"
$Form.FormBorderStyle = "FixedDialog"

$LabelManufacturer = New-Object System.Windows.Forms.Label
$LabelManufacturer.Text = "Fabricante:"
$LabelManufacturer.AutoSize = $true
$LabelManufacturer.Location = New-Object System.Drawing.Point(15, 20)

$TextBoxManufacturer = New-Object System.Windows.Forms.TextBox
$TextBoxManufacturer.Width = 270
$TextBoxManufacturer.Location = New-Object System.Drawing.Point(15, 50)
$TextBoxManufacturer.Text = (Get-WmiObject -Class Win32_Computersystem).Manufacturer
$TextBoxManufacturer.TextAlign = "Center"
$TextBoxManufacturer.ReadOnly = $true

$LabelModel = New-Object System.Windows.Forms.Label
$LabelModel.Text = "Modelo:"
$LabelModel.AutoSize = $true
$LabelModel.Location = New-Object System.Drawing.Point(300, 20)

$TextBoxModel = New-Object System.Windows.Forms.TextBox
$TextBoxModel.Width = 270
$TextBoxModel.Location = New-Object System.Drawing.Point(300, 50)
$TextBoxModel.Text = (Get-WmiObject -Class Win32_Computersystem).Model
$TextBoxModel.TextAlign = "Center"
$TextBoxModel.ReadOnly = $true

$LabelOutput = New-Object System.Windows.Forms.Label
$LabelOutput.Text = "Destino:"
$LabelOutput.AutoSize = $true
$LabelOutput.Location = New-Object System.Drawing.Point(15, 95)

$TextBoxOutput = New-Object System.Windows.Forms.TextBox
$TextBoxOutput.Width = 400
$TextBoxOutput.Location = New-Object System.Drawing.Point(80, 90)
$TextBoxOutput.ReadOnly = $true

$ButtonSearch = New-Object System.Windows.Forms.Button
$ButtonSearch.Text = "Procurar"
$ButtonSearch.Font = New-Object System.Drawing.Font("Century Gothic", 10)
$ButtonSearch.Location = New-Object System.Drawing.Point(493, 90)

$ButtonBackup = New-Object System.Windows.Forms.Button
$ButtonBackup.Text = "Backup"
$ButtonBackup.Width = 555
$ButtonBackup.Height = 30
$ButtonBackup.Font = New-Object System.Drawing.Font("Century Gothic", 10)
$ButtonBackup.Location = New-Object System.Drawing.Point(15, 130)

$LabelStatus = New-Object System.Windows.Forms.Label
$LabelStatus.Text = "Status:"
$LabelStatus.AutoSize = $true
$LabelStatus.Location = New-Object System.Drawing.Point(270, 170)

$RichTextBoxStatus = New-Object System.Windows.Forms.RichTextBox
$RichTextBoxStatus.Width = 555
$RichTextBoxStatus.Height = 160
$RichTextBoxStatus.Location = New-Object System.Drawing.Point(15, 200)
$RichTextBoxStatus.ReadOnly = $true

$ButtonSearch.Add_Click({
    $folderDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $folderDialog.SelectedPath = [Environment]::GetFolderPath("Desktop")
    
    if ($folderDialog.ShowDialog() -eq "OK") {
        $TextBoxOutput.Text = ($folderDialog.SelectedPath + "\" + $TextBoxManufacturer.Text + "\" + $TextBoxModel.Text)
    }
})

$ButtonBackup.Add_Click({
	mkdir "$($TextBoxOutput.Text)"	
	$RichTextBoxStatus.Text = dism /online /export-driver /destination:"""$($TextBoxOutput.Text)"""
})

$Form.Controls.Add($LabelManufacturer)
$Form.Controls.Add($TextBoxManufacturer)
$Form.Controls.Add($LabelModel)
$Form.Controls.Add($TextBoxModel)
$Form.Controls.Add($LabelOutput)
$Form.Controls.Add($TextBoxOutput)
$Form.Controls.Add($ButtonSearch)
$Form.Controls.Add($ButtonBackup)
$Form.Controls.Add($LabelStatus)
$Form.Controls.Add($RichTextBoxStatus)

$Form.AcceptButton = $ButtonBackup

[void]$Form.ShowDialog()
