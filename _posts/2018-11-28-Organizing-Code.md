title: 'Organizing Code'
date: 2018-11-28
permalink: /posts/2018/11/organizingcode/
tags:
  - PowerShell
  - Code
  - Git
  - Snippets
---
<img src="{{ site.url }}{{ site.baseurl }}/images/vscode.png" alt="VS Code">

## Organizing Code
It always seems like I'm trying to find that long lost script or piece of code that does exactly what I need, but can't be found.
I've decided I need a better solution.  I nee to keep everything version controlled, but I also want to be able to break out a portion.  

```
|= code
|=  .git
|== PowerShell
|== .git
|=== ModuleOne 
|=== .git
|
|=== AnotherModule
|=== .git
|
|=== Scripts
|=== .git
|
|=== Sandbox
|=== .git
|
|=== docs
|=== .git
|
|== Python
|== .git [For all Python Code]
|
|== * Repeat Structure from PowerShell

```

## Searching Existing Code
Lee Holmes created a very interesting module using Lucene search funciton for quickly searching through text files.
The module is *Scour* and is available from the PowerShell Gallery
Install-Module -Name Scour -Scope currentuser

http://www.leeholmes.com/blog/2018/08/28/scour-fast-personal-local-content-searches/


