#!/usr/bin/env bash

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# Default Shell PowerShell

USERNAME=vscode
POSH_THEME="~/.poshthemes/powerlevel10k_rainbow.omp.json"
FONT="Meslo"

# Download Install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Download Oh-My-Posh Themes
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

# Install Meslo Font
oh-my-posh font install ${FONT}
## Moved to DockerFile:
## Add fontconfig
# sudo apt-get update -y
# sudo apt-get -y install --no-install-recommends fontconfig
## Cleanup apt to keep layer smaller
# rm -rf /var/lib/apt/lists/*

## Update Font Cache from fontconfig
# fc-cache -fv

# Configure Bash Prompt
echo "eval \"\$(oh-my-posh --init --shell bash --config $POSH_THEME)\"" >>~/.bashrc

# Configur Zsh Prompt
echo "eval \"\$(oh-my-posh init zsh --config $POSH_THEME)\"" >>~/.zshrc

sudo chsh vscode -s $(which pwsh)

# Configure PowerShell Prompt

mkdir ~/.config/powershell

# Profile for PowerShell Integrated Terminal
echo "Import-Module Terminal-Icons" >>~/.config/powershell/Microsoft.PowerShell_profile.ps1
echo "oh-my-posh init pwsh --config $POSH_THEME | Invoke-Expression" >>~/.config/powershell/Microsoft.PowerShell_profile.ps1
# Profile for VSCode PowerShell Module
echo "oh-my-posh init pwsh --config $POSH_THEME | Invoke-Expression" >>~/.config/powershell/Microsoft.VSCode_profile.ps1
echo "Import-Module Terminal-Icons" >>~/.config/powershell/Microsoft.VSCode_profile.ps1

# Exit with 0 so no error catch is triggered
exit 0
