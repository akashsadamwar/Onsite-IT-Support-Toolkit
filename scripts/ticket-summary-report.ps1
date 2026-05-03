param(
    [Parameter(Mandatory = $true)]
    [string]$TicketCsv
)

$tickets = Import-Csv -Path $TicketCsv

Write-Host ""
Write-Host "========================="
Write-Host "Spiceworks Ticket Summary"
Write-Host "========================="
Write-Host "Total Tickets: $($tickets.Count)"
Write-Host ""

Write-Host "Tickets by Category:"
$tickets | Group-Object Category | Sort-Object Count -Descending | ForEach-Object {
    Write-Host " - $($_.Name): $($_.Count)"
}

Write-Host ""
Write-Host "Tickets by Priority:"
$tickets | Group-Object Priority | Sort-Object Name | ForEach-Object {
    Write-Host " - $($_.Name): $($_.Count)"
}

Write-Host ""
Write-Host "Open or Escalated Tickets:"
$tickets | Where-Object { $_.Status -in @("Open", "Escalated") } | ForEach-Object {
    Write-Host " - $($_.TicketId) | $($_.User) | $($_.Category) | $($_.Status) | $($_.Summary)"
}

Write-Host ""
Write-Host "Recommended Level 1 Focus Areas:"
$topCategory = $tickets | Group-Object Category | Sort-Object Count -Descending | Select-Object -First 1
Write-Host " - Most frequent category: $($topCategory.Name)"
Write-Host " - Review self-service documentation for repeated issues"
Write-Host " - Confirm escalated tickets include impact, troubleshooting steps, and screenshots where useful"
Write-Host ""
