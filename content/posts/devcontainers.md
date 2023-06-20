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
![PSLogo](/pslogo.png)

 VSCode and Dev Containers allow for a consistent development environment stored with Project.  Making it much easier to switch between devices and still have access to common tools.  

Ability to customize extensions for installed for VSCode in the devcontainer without being installed on your main system preventing clutter.  Oh-My-Posh provides for a customized prompt for not only PowerShell but also Bash and Zsh.

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

### TODO

- Vale Configuration
- Theme is not showing properly on first page, markdown is good on full page though.  Missing H2 and H3 tags
- Do Meslo Font need installed in devcontainer?  Appears VS Code is only using the host OS fonts to display.  Need to confirm, remove if not needed.
- Reduce Image size
