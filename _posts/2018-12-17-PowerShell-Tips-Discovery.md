---
title: 'PowerShell Tips - Discovery'
date: 2018-12-17
permalink: /posts/2018/12/Tips/
tags:

  - PowerShell
  - Tips

---

### PowerShell Tips - Discovery

PowerShell is all about Discovery.  I would recommend running Windows PowerShell 5.1.  The only time you need to watch is with some of the older Microsoft products like Exchange and Sharepoint could have issues.  So be sure to read the README.  You can get it by installing [WMF 5.1](https://docs.microsoft.com/en-us/powershell/wmf/5.1/install-configure)

Remember, PowerShell cmdlets are always in the VERB-NOUN format.

#### Command of the Day
 Ctrl - and Ctrl + controls font size.
 Finds a random command that is installed and shows help in a window

```powershell
Get-command | get-random | Get-Help -ShowWindow
```

#### Updating installed help files

```powershell
Update-Help -Force
```

#### Show installed Module and location

```powershell
Get-Module -ListAvailable | select name, path
```

#### Find commands in a module by name

```powershell
Get-Command -Module MODULENAME
```

#### Find a command that has a noun in it

```powershell
Get-Command -Noun *CSV*
```

#### Show all the about topics with description

```powershell
Get-Help -Name about_*
```

### Show all commands installed, show total count

```powershell
(Get-Command).Name
(Get-Command).Count
```

#### Show what type of object is outputted by a command

userful for find what properties are available but not exposed by the default formatting that is display

```powershell
Get-SMBShare | Get-Member
```

#### Show what Type of Object is returned

```powershell
#Returns an array of Share Objects
$Share = Get-SMBShare

# Show the type of object for the first entry of the array
$Share[0].GetType()
```

