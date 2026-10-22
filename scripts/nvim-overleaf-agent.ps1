[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string] $File,

  [Parameter(Mandatory = $true)]
  [ValidateRange(1, [int]::MaxValue)]
  [int] $Line,

  [ValidateRange(1, [int]::MaxValue)]
  [int] $Column = 1,

  [string] $SelectedText = "",

  [switch] $ForwardSearch,

  [string] $ServerFile = (
    Join-Path $env:LOCALAPPDATA "nvim-data\agent-server.json"
  )
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $ServerFile)) {
  throw "No Neovim agent server is published at '$ServerFile'. Start Neovim first."
}

$serverInfo = Get-Content -Raw -LiteralPath $ServerFile |
  ConvertFrom-Json

if ([string]::IsNullOrWhiteSpace($serverInfo.server)) {
  throw "The Neovim server file does not contain a server address."
}

$resolvedFile = (Resolve-Path -LiteralPath $File).Path
$request = @{
  file = $resolvedFile
  line = $Line
  column = $Column
  selected_text = $SelectedText
  forward_search = [bool] $ForwardSearch
} | ConvertTo-Json -Compress

$encodedRequest = [Convert]::ToBase64String(
  [Text.Encoding]::UTF8.GetBytes($request)
)

$expression = "v:lua.NvimAgentDispatch('$encodedRequest')"
$response = & nvim --headless --server $serverInfo.server --remote-expr $expression

if ($LASTEXITCODE -ne 0) {
  throw "Could not connect to Neovim server '$($serverInfo.server)'."
}

$result = $response | ConvertFrom-Json

if (-not $result.ok) {
  throw $result.error
}

$result
