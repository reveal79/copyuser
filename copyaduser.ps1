# Load Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Create form and controls
$form = New-Object System.Windows.Forms.Form
$form.Text = "Copy AD User"
$form.Width = 500
$form.Height = 600
$form.StartPosition = "CenterScreen"

# Create control for selecting user to copy from
$copyFromLabel = New-Object System.Windows.Forms.Label
$copyFromLabel.Text = "Copy From:"
$copyFromLabel.Location = New-Object System.Drawing.Point(20, 50)
$copyFromLabel.AutoSize = $true

$copyFromTextBox = New-Object System.Windows.Forms.TextBox
$copyFromTextBox.Location = New-Object System.Drawing.Point(200, 50)
$copyFromTextBox.Width = 200

# Add controls to form
$form.Controls.Add($copyFromLabel)
$form.Controls.Add($copyFromTextBox)

# Create OK and Cancel buttons
$okButton = New-Object System.Windows.Forms.Button
$okButton.Text = "OK"
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$okButton.Location = New-Object System.Drawing.Point(150, 520)
$okButton.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right

$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Text = "Cancel"
$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$cancelButton.Location = New-Object System.Drawing.Point(250, 520)
$cancelButton.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right

# Add buttons to form
$form.AcceptButton = $okButton
$form.CancelButton = $cancelButton
$form.Controls.Add($okButton)
$form.Controls.Add($cancelButton)

# Display form and wait for user input
$result = $form.ShowDialog()

# Process user input
if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    $copyFromUser = $copyFromTextBox.Text
    
    # Create form for new user information
    $newUserForm = New-Object System.Windows.Forms.Form
    $newUserForm.Text = "New User Information"
    $newUserForm.Width = 500
    $newUserForm.Height = 600
    $newUserForm.StartPosition = "CenterScreen"

    # Create controls for new user information
    $firstNameLabel = New-Object System.Windows.Forms.Label
    $firstNameLabel.Text = "First Name (new user):"
    $firstNameLabel.Location = New-Object System.Drawing.Point(20, 50)
    $firstNameLabel.AutoSize = $true

    $firstNameTextBox = New-Object System.Windows.Forms.TextBox
    $firstNameTextBox.Location = New-Object System.Drawing.Point(200, 50)
    $firstNameTextBox.Width = 200

    $lastNameLabel = New-Object System.Windows.Forms.Label
    $lastNameLabel.Text = "Last Name (new user):"
    $lastNameLabel.Location = New-Object System.Drawing.Point(20, 90)
    $lastNameLabel.AutoSize = $true

    $lastNameTextBox = New-Object System.Windows.Forms.TextBox
    $lastNameTextBox.Location = New-Object System.Drawing.Point(200, 90)
    $lastNameTextBox.Width = 200

    $displayNameLabel = New-Object System.Windows.Forms.Label
    $displayNameLabel.Text = "Display Name (new user):"
    $displayNameLabel.Location = New-Object System.Drawing.Point(20, 130)
    $displayNameLabel.AutoSize = $true

    $displayNameTextBox = New
