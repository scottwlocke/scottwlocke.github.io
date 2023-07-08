# Minimal Modules for VMWare Automation (VMWare.PowerCLI 13+)

Based on PS Gallery Listing of Dependencies for VMware.VimAutomation.Core which provides Connect-VIServer the following modules are required to connect to VSphere.

- VMware.VimAutomation.Core
    - VMware.Vim
    - VMware.VimAutomation.Common
    - VMware.VimAutomation.Sdk

## Addtional Modules of Note

- VMware.VimAutomation.Security
    - Most of the VSphere Security Commands
- VMware.VimAutomation.Common
    - Wait-Task
    - Stop-Task

## Dirty Way to find Required Modules Based on Manifest

```pwsh
Get-Module VMware.VimAutomation.Sdk -ListAvailable | ForEach-Object {
    $_.RequiredModules, $_.NestedModules.RequiredModules
    }
```