#!/usr/bin/env bash

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# Default Shell PowerShell
sudo chsh vscode -s $(which pwsh)

/bin/bash /tmp/library-scripts/ohmyposhinstall.sh

exit 0