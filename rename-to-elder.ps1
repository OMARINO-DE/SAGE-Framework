# ELDER Framework Rename Script
# This script renames all SAGE references to ELDER across the repository

$replacements = @{
    'SAGE Framework' = 'ELDER Framework'
    'SAGE' = 'ELDER'
    'Senior-Adaptive Guided Ecosystem' = 'Empowering Living for Digitally Enhanced Responsiveness'
    'Seniorengerechtes Adaptives Geführtes Ökosystem' = 'Ermächtigendes Leben für Digital Verbesserte Reaktionsfähigkeit'
    'safe-simplicity' = 'learning-friendly'
    'Safe Simplicity' = 'Learning-Friendly'
    'Sichere Einfachheit' = 'Lernfreundlich'
    'assisted-autonomy' = 'empowered-autonomy'
    'Assisted Autonomy' = 'Empowered Autonomy'
    'Unterstützte Autonomie' = 'Ermächtigte Autonomie'
    'guided-interaction' = 'directed-guidance'
    'Guided Interaction' = 'Directed Guidance'
    'Geführte Interaktion' = 'Gerichtete Anleitung'
    'emotional-trust' = 'emotional-trust'  # stays the same
    'Emotional Trust Layer' = 'Emotional Trust'
    'Emotionale Vertrauensebene' = 'Emotionales Vertrauen'
    'github.com/OMARINO-DE/SAGE-Framework' = 'github.com/OMARINO-DE/ELDER-Framework'
    '40 Requirements' = '45+ Requirements'
    '40 Anforderungen' = '45+ Anforderungen'
    'four pillars' = 'five pillars'
    'vier Säulen' = 'fünf Säulen'
    'The Four Pillars' = 'The Five Pillars'
    'Die vier Säulen' = 'Die fünf Säulen'
}

$filePatterns = @('*.md', '*.cff')

Write-Host "Starting ELDER framework rename..." -ForegroundColor Cyan

Get-ChildItem -Recurse -Include $filePatterns | ForEach-Object {
    $file = $_
    Write-Host "Processing: $($file.FullName)" -ForegroundColor Yellow
    
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    foreach ($key in $replacements.Keys) {
        $content = $content -replace [regex]::Escape($key), $replacements[$key]
    }
    
    if ($content -ne $originalContent) {
        Set-Content $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  ✓ Updated" -ForegroundColor Green
    } else {
        Write-Host "  - No changes" -ForegroundColor Gray
    }
}

Write-Host "`nRename complete!" -ForegroundColor Cyan
Write-Host "Don't forget to rename files:" -ForegroundColor Yellow
Write-Host "  - core/safe-simplicity.* -> learning-friendly.*"
Write-Host "  - core/assisted-autonomy.* -> empowered-autonomy.*"
Write-Host "  - core/guided-interaction.* -> directed-guidance.*"
