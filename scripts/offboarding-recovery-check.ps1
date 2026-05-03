param(
    [Parameter(Mandatory = $true)]
    [string]$EmployeeName,

    [Parameter(Mandatory = $true)]
    [string]$AssetTag
)

Write-Host ""
Write-Host "================================"
Write-Host "Offboarding Recovery Checklist"
Write-Host "================================"
Write-Host "Employee: $EmployeeName"
Write-Host "Asset Tag: $AssetTag"
Write-Host ""
Write-Host "[ ] Confirm offboarding date with HR/manager"
Write-Host "[ ] Recover laptop, charger, badge, headset, mobile device, and peripherals"
Write-Host "[ ] Document physical condition of returned equipment"
Write-Host "[ ] Confirm account disable request was sent to AD/M365 admin"
Write-Host "[ ] Confirm mailbox, OneDrive, and SharePoint transfer requirements"
Write-Host "[ ] Remove device from user assignment in asset inventory"
Write-Host "[ ] Back up approved business data if required"
Write-Host "[ ] Wipe or reimage device according to company policy"
Write-Host "[ ] Update Spiceworks ticket with recovered assets and pending access actions"
Write-Host "[ ] Escalate missing equipment or access concerns to manager/Level 2"
Write-Host ""
