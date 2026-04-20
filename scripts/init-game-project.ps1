<#
.SYNOPSIS
    Initialize a new kids' game project from the KidsGames template.

.DESCRIPTION
    Copies the KidsGames template files to a target project directory,
    configures the project with the Game Designer's information, and
    sets up the directory structure for game development.

.PARAMETER ProjectPath
    The full path where the new game project should be created.

.PARAMETER DesignerName
    The name of the kid (Game Designer).

.PARAMETER DesignerAge
    The age of the Game Designer (default: 5).

.PARAMETER Language
    The language preference: "en", "es", or "both" (default: "both").

.PARAMETER InteractionMode
    How the kid interacts: "kid", "parent", or "hybrid" (default: "hybrid").

.PARAMETER Engine
    Preferred game engine: "auto", "godot", "phaser", "scratch", "love2d" (default: "auto").

.EXAMPLE
    .\init-game-project.ps1 -ProjectPath "C:\Users\pedro\projects\GabrielsGame" -DesignerName "Gabriel" -DesignerAge 5

.EXAMPLE
    .\init-game-project.ps1 -ProjectPath "~/projects/MyGame" -DesignerName "Sofia" -DesignerAge 7 -Language "es"
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectPath,

    [Parameter(Mandatory = $true)]
    [string]$DesignerName,

    [Parameter()]
    [ValidateRange(3, 12)]
    [int]$DesignerAge = 5,

    [Parameter()]
    [ValidateSet("en", "es", "both")]
    [string]$Language = "both",

    [Parameter()]
    [ValidateSet("kid", "parent", "hybrid")]
    [string]$InteractionMode = "hybrid",

    [Parameter()]
    [ValidateSet("auto", "godot", "phaser", "scratch", "love2d")]
    [string]$Engine = "auto"
)

$ErrorActionPreference = "Stop"

# Resolve paths
$ProjectPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ProjectPath)
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TemplateDir = Join-Path (Split-Path -Parent $ScriptDir) "template"

Write-Host ""
Write-Host "🎮 KidsGames Project Initializer" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan
Write-Host ""

# Validate template directory exists
if (-not (Test-Path $TemplateDir)) {
    Write-Error "Template directory not found at: $TemplateDir"
    exit 1
}

# Create project directory if it doesn't exist
if (-not (Test-Path $ProjectPath)) {
    Write-Host "📁 Creating project directory: $ProjectPath" -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $ProjectPath -Force | Out-Null
} else {
    # Check if directory has existing content
    $existingFiles = Get-ChildItem -Path $ProjectPath -Force
    if ($existingFiles.Count -gt 0) {
        Write-Host "⚠️  Project directory is not empty: $ProjectPath" -ForegroundColor Yellow
        $confirm = Read-Host "Continue and overwrite template files? (y/N)"
        if ($confirm -ne "y" -and $confirm -ne "Y") {
            Write-Host "❌ Cancelled." -ForegroundColor Red
            exit 0
        }
    }
}

# Copy template files
Write-Host "📋 Copying template files..." -ForegroundColor Green
Copy-Item -Path "$TemplateDir\*" -Destination $ProjectPath -Recurse -Force

# Create game project subdirectories
$gameDirs = @(
    "game\assets\art",
    "game\assets\audio",
    "game\assets\fonts",
    "game\scenes",
    "game\scripts",
    "game\ui",
    "art-prompts",
    "playtests"
)

foreach ($dir in $gameDirs) {
    $fullPath = Join-Path $ProjectPath $dir
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
    }
}

# Update configuration with provided values
$configPath = Join-Path $ProjectPath "config\game-project.yaml"
if (Test-Path $configPath) {
    Write-Host "⚙️  Configuring project..." -ForegroundColor Green

    $configContent = Get-Content $configPath -Raw

    # Replace designer settings
    $configContent = $configContent -replace '(name:\s*)"[^"]*"', "`$1`"$DesignerName`""
    $configContent = $configContent -replace '(age:\s*)\d+', "`${1}$DesignerAge"
    $configContent = $configContent -replace '(language:\s*)"[^"]*"', "`$1`"$Language`""
    $configContent = $configContent -replace '(interaction_mode:\s*)"[^"]*"', "`$1`"$InteractionMode`""

    # Replace engine setting
    $configContent = $configContent -replace '(primary:\s*)"[^"]*"', "`$1`"$Engine`""

    Set-Content -Path $configPath -Value $configContent -NoNewline
}

# Create initial Game Card placeholder
$gameCardPath = Join-Path $ProjectPath "docs\game-card.md"
if (-not (Test-Path (Split-Path $gameCardPath -Parent))) {
    New-Item -ItemType Directory -Path (Split-Path $gameCardPath -Parent) -Force | Out-Null
}

$gameCardContent = @"
# 🎮 $DesignerName's Game
## By $DesignerName, Game Designer (Age $DesignerAge)

> This Game Card will be filled in during the **Imagine** phase!
> The Game Creator agent will help $DesignerName describe their dream game.

🦸 **Hero:** _[Waiting for $DesignerName's idea!]_

🌍 **World:** _[Where does the game take place?]_

⭐ **Goal:** _[What does the player try to do?]_

🎯 **Main Action:** _[The main thing the player does]_

😈 **Challenge:** _[What makes it fun and exciting?]_

🎨 **Look:** _[How does the game look?]_

🎵 **Sound:** _[How does the game sound?]_

✨ **Special:** _[What makes this game unique?]_
"@

Set-Content -Path $gameCardPath -Value $gameCardContent

# Create art prompts log
$promptLogPath = Join-Path $ProjectPath "art-prompts\prompt-log.md"
$promptLogContent = @"
# 🎨 Art Generation Prompt Log

This file tracks all AI art generation prompts and their results.

## Prompts

_No prompts generated yet. Art Spark will log prompts here during the Make phase._

---

| # | Asset Name | Prompt | Tool Used | Result | Status |
|---|-----------|--------|-----------|--------|--------|
| | | | | | |
"@
Set-Content -Path $promptLogPath -Value $promptLogContent

# Create playtest session log
$playtestLogPath = Join-Path $ProjectPath "playtests\session-log.md"
$playtestLogContent = @"
# 🛡️ Playtest Session Log

This file tracks all playtest sessions conducted by the Fun Guardian.

## Sessions

_No playtests yet. Fun Guardian will log sessions here during the Play phase._

---
"@
Set-Content -Path $playtestLogPath -Value $playtestLogContent

# Initialize git if not already a repo
$gitDir = Join-Path $ProjectPath ".git"
if (-not (Test-Path $gitDir)) {
    Write-Host "📦 Initializing git repository..." -ForegroundColor Green
    Push-Location $ProjectPath
    try {
        git init --quiet 2>$null
        if ($LASTEXITCODE -eq 0) {
            # Create .gitignore
            $gitignoreContent = @"
# OS files
.DS_Store
Thumbs.db
desktop.ini

# Editor files
.vscode/
.idea/
*.swp
*.swo
*~

# Build output (engine-specific, update as needed)
build/
dist/
export/
*.exe
*.app

# Dependencies (engine-specific)
node_modules/
.import/
.godot/

# Temporary files
*.tmp
*.bak
*.log
"@
            Set-Content -Path (Join-Path $ProjectPath ".gitignore") -Value $gitignoreContent
            Write-Host "  ✅ Git initialized with .gitignore" -ForegroundColor Green
        }
    } catch {
        Write-Host "  ⚠️  Git not available, skipping repository init" -ForegroundColor Yellow
    }
    Pop-Location
}

# Summary
Write-Host ""
Write-Host "✅ Project initialized successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Summary:" -ForegroundColor Cyan
Write-Host "  📁 Project:     $ProjectPath"
Write-Host "  👤 Designer:    $DesignerName (age $DesignerAge)"
Write-Host "  🌍 Language:    $Language"
Write-Host "  🎮 Engine:      $Engine"
Write-Host "  💬 Interaction: $InteractionMode"
Write-Host ""
Write-Host "🚀 Next Steps:" -ForegroundColor Cyan
Write-Host "  1. Open the project in your editor"
Write-Host "  2. Start a conversation with your AI assistant"
Write-Host "  3. The AGENTS.md will guide the Game Creator to help $DesignerName!"
Write-Host ""
Write-Host "🎮 Have fun creating games, $DesignerName! 🌟" -ForegroundColor Magenta
Write-Host ""
