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

- **TODO:** Loop through Required and Nested

- Get-Module returns System.Management.Automation.PSModuleInfo instance(s) describing the specified module(s).

- -ListAvailable makes sure that modules that aren't presently imported but are discoverable via auto-loading, are included in the lookup.

- $_.RequiredModules lists the direct module dependencies
- $_.NestedModules.RequiredModules those of any nested modules (which is presumably rare)