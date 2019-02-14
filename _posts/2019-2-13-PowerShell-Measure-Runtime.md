---
title: 'PowerShell: Measuring runtimes execution'
date: 2019-2-13
permalink: /posts/2019/2/13/PowerShell-Measure-Runtime/
comments: true
tags:
  - Powershell
  - Automation
  - PSTips

---

PowerShell has a very useful object, the Diagnostics stopwatch.  You can create one by the following

```powershell
$Timer = [System.Diagnostics.Stopwatch]::StartNew()

# Run some code
$Timer.Stop()
$Timer.Elapsed.Milliseconds
$Timer.Start()
# Run some more Code
$Timer.Stop()
$Timer.Elapsed.Seconds


These are the properties exposed from the Elapsed method

Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 20
Milliseconds      : 816
Ticks             : 208169978
TotalDays         : 0.000240937474537037
TotalHours        : 0.00578249938888889
TotalMinutes      : 0.346949963333333
TotalSeconds      : 20.8169978
TotalMilliseconds : 20816.9978

````