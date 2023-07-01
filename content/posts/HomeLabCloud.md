---
author:
  name: "Scott W Locke"
title: "Home Lab with Cloud Integration"
date: 2023-06-02T02:54:45Z
draft: True
toc: false
images:
tags:
  - "Home Lab"
  - "Azure"
  - "AWS"
  - "ProxMox"
  - "Containers"
  - "Automation"
---

## Article about developing a Home Lab with Cloud Presence

### Points

- Old Hardware to use
- Free Subscriptions
- VSCode and devcontainters
- ProxMox free Virtualization
- Free GitHub / Azure DevOps
- Docker
-

- ## WSL Running Docker

-
- Error trying to run a Dev Container with WSL

```sh
error getting credentials - err: exit status 1, out: GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.secrets was not provided by any .service files
```

needed to add the following

```sh
sudo apt install gnupg2 pass
```
