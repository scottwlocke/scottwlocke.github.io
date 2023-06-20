---
title: "Devcontainers in VS Code"
date: 2023-06-03T00:16:39Z
draft: false
toc: false
images:
tags:
  - vscode
  - docker
  - containers
---

## VSCode and Dev Containers

### **Features**

- Consistent Environment stored with Project
- Customize Extensions for VSCode
- Customize Applications in Container using Docker File

## Build

Utilizing a Dockerfile with Debian Bookworm version.  Also installing Vale for linting and Oh-My-Posh for syntax highlighting.

### Added to Container through Features

- Latest PowerShell
- Common Utilities (Zsh and others)
- Git
- Git Cli
- Hugo
- Multiple VS Code Extensions

### Nerd Font

Using the Meslo Nerd Font.  Needs to be configured in VS Code and installed on the OS VS Code is running from.  "MesloLGS NF" is the one that I chose that has the ligatures necessary for oh-my-posh to show icons.

Took inspiration from the PowerShell Docs devcontainer to add additional linting and extensions to the devontainer.  Need to look into configuration of Vale with style guides that would work for blog.
