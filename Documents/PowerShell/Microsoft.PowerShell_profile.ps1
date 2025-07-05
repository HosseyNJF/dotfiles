<# Oh-My-Posh #>

oh-my-posh init pwsh --config "$env:USERPROFILE/.powerlevel10k.omp.json" | Invoke-Expression

<# Aliases #>

# Docker
function dk { docker $args }
function dkc { docker compose $args }

# Kubernetes
function k { kubectl $args }

# Laravel
function sail { ./vendor/bin/sail $args }

# Git
Import-Module git-aliases -DisableNameChecking
