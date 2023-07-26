
Import-Module Terminal-Icons

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

oh-my-posh init pwsh --config $env:POSH_THEME | Invoke-Expression

# NOTE: You can override the above env var from the devcontainer.json "args" under the "build" key.
