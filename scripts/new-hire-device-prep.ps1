param(
    [Parameter(Mandatory = $true)]
    [string]$NewHireCsv,

    [Parameter(Mandatory = $true)]
    [string]$AssetCsv
)

$newHires = Import-Csv -Path $NewHireCsv
$assets = Import-Csv -Path $AssetCsv
$availableLaptops = $assets | Where-Object { $_.Type -eq "Laptop" -and $_.Status -eq "Available" }

foreach ($hire in $newHires) {
    $assignedLaptop = $availableLaptops | Select-Object -First 1

    Write-Host ""
    Write-Host "======================================"
    Write-Host "New Hire Device Preparation Checklist"
    Write-Host "======================================"
    Write-Host "Employee: $($hire.EmployeeName)"
    Write-Host "Department: $($hire.Department)"
    Write-Host "Start Date: $($hire.StartDate)"
    Write-Host "Manager: $($hire.Manager)"
    Write-Host "Recommended Laptop: $($assignedLaptop.AssetTag) - $($assignedLaptop.Model)"
    Write-Host ""
    Write-Host "[ ] Confirm manager approval and hardware request"
    Write-Host "[ ] Image laptop with current Windows build"
    Write-Host "[ ] Apply hostname standard: $($hire.Hostname)"
    Write-Host "[ ] Install Microsoft 365 apps, Teams, browser, VPN, printer drivers"
    Write-Host "[ ] Confirm BitLocker and antivirus status"
    Write-Host "[ ] Confirm Wi-Fi, Ethernet, webcam, microphone, and speakers"
    Write-Host "[ ] Coordinate AD account creation and group access"
    Write-Host "[ ] Confirm mailbox, Teams, OneDrive, and SharePoint access"
    Write-Host "[ ] Prepare docking station, charger, headset, and monitor"
    Write-Host "[ ] Create Spiceworks ticket note with asset tag and setup status"
    Write-Host "[ ] Schedule first-day login support"
    Write-Host ""

    $availableLaptops = $availableLaptops | Where-Object { $_.AssetTag -ne $assignedLaptop.AssetTag }
}
