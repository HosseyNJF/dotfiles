<# Oh-My-Posh #>

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_lean.omp.json" | Invoke-Expression

<# Aliases #>

# Docker
function dk { docker $args }
function dkc { docker compose $args }

# Kubernetes
function k { kubectl $args }

# Laravel
function sail { ./vendor/bin/sail $args }
