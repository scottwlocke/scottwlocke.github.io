---
author:
  name: "Scott Locke"
title: "Puppet and Declaritive Configuration"
date: 2023-06-02T02:54:45Z
draft: True
toc: false
images:
tags:
  - "puppet"
  - "iac"
  - "pwsh"
---

## Working with Puppet coming from a PowerShell background

Puppet is a declaritive language written in Ruby.  
It is one of the older Configuration platforms.
There are some similarities to PowerShell DSC, but there are many more features than DSC provides.

### File Templating

Puppet has a feature rich File Templating system.  This allows you to generate files with replacement of TAGS in the file template.  This is much easier than how I was familiar with doing things.  Instead of trying to generate a file, could have a file structure with TAGS where information would be replaced.

