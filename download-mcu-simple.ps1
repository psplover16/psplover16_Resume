# Simple MCU Logo Download Script

# Create directory
$logoDir = "public/assets/img/education"
if (!(Test-Path $logoDir)) {
    New-Item -Path $logoDir -ItemType Directory -Force
    Write-Host "Created directory: $logoDir" -ForegroundColor Green
}

# Download MCU logo
Write-Host "Downloading MCU logo..." -ForegroundColor Cyan

try {
    $url = "https://upload.wikimedia.org/wikipedia/zh/thumb/8/8a/Ming_Chuan_University_logo.svg/240px-Ming_Chuan_University_logo.svg.png"
    $outputPath = "$logoDir/mcu-logo.png"
    
    Invoke-WebRequest -Uri $url -OutFile $outputPath -UseBasicParsing
    
    if (Test-Path $outputPath) {
        $fileSize = (Get-Item $outputPath).Length
        Write-Host "Success: mcu-logo.png ($fileSize bytes)" -ForegroundColor Green
    } else {
        Write-Host "Failed: File not created" -ForegroundColor Red
    }
}
catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "Download complete!" -ForegroundColor Yellow