$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "Panapps Skill Installer" -ForegroundColor Cyan
Write-Host "-----------------------"
Write-Host "Choose framework:"
Write-Host "1. React"
Write-Host "2. Angular"
Write-Host "3. Vue"
Write-Host ""

$choice = Read-Host "Enter option number"

switch ($choice) {
    "1" {
        $framework = "react"
        $frameworkTitle = "React"
    }
    "2" {
        $framework = "angular"
        $frameworkTitle = "Angular"
    }
    "3" {
        $framework = "vue"
        $frameworkTitle = "Vue"
    }
    default {
        Write-Host "Invalid option. Exiting." -ForegroundColor Red
        exit 1
    }
}

$skillName = "panapps-$framework-standards"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$templatePath = Join-Path $scriptRoot "templates\SKILL.template.md"

if (-not (Test-Path $templatePath)) {
    Write-Host "Template file not found: $templatePath" -ForegroundColor Red
    exit 1
}

$template = [System.IO.File]::ReadAllText($templatePath)

$template = $template.Replace("{{SKILL_NAME}}", $skillName)
$template = $template.Replace("{{FRAMEWORK}}", $framework)
$template = $template.Replace("{{FRAMEWORK_TITLE}}", $frameworkTitle)

$repoRoot = Split-Path -Parent $scriptRoot
$projectRoot = Split-Path -Parent $repoRoot
$targetDir = Join-Path $projectRoot ".claude\skills\$skillName"
$targetFile = Join-Path $targetDir "SKILL.md"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($targetFile, $template, $utf8NoBom)

Write-Host ""
Write-Host "Skill created successfully:" -ForegroundColor Green
Write-Host $targetFile
Write-Host ""
Write-Host "Now open Claude Code in this project and use:"
Write-Host "/$skillName"
