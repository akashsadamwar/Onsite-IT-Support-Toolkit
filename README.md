# Onsite IT Support Operations Toolkit

A comprehensive toolkit for managing on-site IT support operations. This project includes PowerShell automation scripts, operational runbooks, escalation procedures, troubleshooting guides, and reusable templates for standardizing common IT support workflows.

## Project Overview

This toolkit provides an end-to-end operational framework for managing IT support processes in a medium-sized organization (150+ users). It covers new hire device preparation, offboarding procedures, device deployment workflows, ticket documentation standards, meeting room AV support, and escalation procedures. The toolkit standardizes processes, reduces manual work through automation, and ensures consistent documentation across support activities.

## Project Structure

```text
onsite-it-support-toolkit/
├── README.md
├── scripts/
│   ├── new-hire-device-prep.ps1
│   ├── offboarding-recovery-check.ps1
│   └── ticket-summary-report.ps1
├── data/
│   ├── sample-assets.csv
│   ├── sample-new-hires.csv
│   └── sample-tickets.csv
├── docs/
│   ├── av-meeting-room-checklist.md
│   ├── device-deployment-runbook.md
│   ├── escalation-matrix.md
│   ├── onboarding-offboarding-runbook.md
│   ├── printer-troubleshooting-guide.md
│   ├── self-service-password-reset-guide.md
│   └── spiceworks-ticket-standards.md
└── templates/
    ├── hardware-request-form.md
    ├── level-2-escalation-note.md
    └── ticket-resolution-note.md
```

## Tools and Skills Demonstrated

- Windows 10 / Windows 11 support
- Microsoft 365 support workflow
- Teams meeting and AV support
- Logitech room device readiness checks
- Printer troubleshooting
- Basic network troubleshooting
- Active Directory account coordination
- Device imaging and deployment process
- Hardware asset tracking
- Spiceworks-style ticket logging
- PowerShell scripting
- Technical documentation
- Customer-service-focused troubleshooting

## How To Use This Project

Open PowerShell from the project folder:

```powershell
cd .\onsite-it-support-toolkit
```

Run the sample new hire preparation script:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\new-hire-device-prep.ps1 -NewHireCsv .\data\sample-new-hires.csv -AssetCsv .\data\sample-assets.csv
```

Run the offboarding recovery checklist:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\offboarding-recovery-check.ps1 -EmployeeName "Jordan Lee" -AssetTag "LAP-1042"
```

Generate a ticket summary report:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\ticket-summary-report.ps1 -TicketCsv .\data\sample-tickets.csv
```

If your machine already allows local PowerShell scripts, you can also run the scripts directly from the `scripts` folder.

## Script Safety

The included scripts are portfolio/lab-safe. They do not modify Active Directory, Microsoft 365, devices, or Spiceworks. They generate checklists and reports that show how a Level 1 technician would organize and document work.

In a real environment, these could be extended to:

- Query Active Directory with the RSAT module
- Pull device data from Intune, SCCM, or asset inventory
- Export ticket reports from Spiceworks
- Validate group membership and mailbox licensing
- Generate onboarding tasks automatically

## Usage Examples

### Scenario: New Hire Device Preparation

1. A manager submits a hardware request for a new employee.
2. IT support team checks available laptop inventory.
3. IT prepares the laptop using the device deployment runbook.
4. IT coordinates account creation and access with system administrators.
5. All actions and device assignments are logged and tracked.
6. On day one, the new user confirms system access, productivity tools, printer, VPN, and communications access.
7. Any unresolved issues are documented and escalated with complete notes.
