<# Oh-My-Posh #>

function prompt {
  if (Test-Path variable:global:ompjob) {
    Receive-Job -Wait -AutoRemoveJob -Job $global:ompjob | Invoke-Expression;
    Remove-Variable ompjob -Scope Global;
    return prompt;
  }
  $global:ompjob = Start-Job {oh-my-posh init pwsh --config "$env:USERPROFILE/.powerlevel10k.omp.json"};
  write-host -ForegroundColor Blue "Loading `$profile in the background..."
  Write-Host -ForegroundColor Blue -NoNewline "  $($executionContext.SessionState.Path.CurrentLocation) ".replace($HOME, '~');
  Write-Host -ForegroundColor Green -NoNewline "❯"
  return " ";
}

<# Aliases #>

# Docker
function dk { docker $args }
function dkc { docker compose $args }

# Kubernetes
function k { kubectl $args }

<# Tab and Up/Down arrow completion like zsh #>

Import-Module PSReadLine;
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Laravel
function sail { ./vendor/bin/sail $args }

# Git
Import-Module git-aliases -DisableNameChecking
