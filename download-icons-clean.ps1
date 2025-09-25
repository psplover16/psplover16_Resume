# Tech Icons Downloader Script
# Downloads technology icons from DevIcons CDN

# Create icons directory
$iconsDir = "src/assets/img/icons"
if (!(Test-Path $iconsDir)) {
    New-Item -ItemType Directory -Path $iconsDir -Force
}

# Technology icons mapping
$icons = @{
    "vue" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg"
    "react" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg"
    "javascript" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg"
    "typescript" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg"
    "nodejs" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg"
    "python" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg"
    "php" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg"
    "java" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg"
    "csharp" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/csharp/csharp-original.svg"
    "cpp" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/cplusplus/cplusplus-original.svg"
    "html5" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg"
    "css3" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg"
    "sass" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sass/sass-original.svg"
    "tailwindcss" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tailwindcss/tailwindcss-plain.svg"
    "bootstrap" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg"
    "mysql" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg"
    "postgresql" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg"
    "mongodb" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mongodb/mongodb-original.svg"
    "git" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"
    "github" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg"
    "docker" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg"
    "aws" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg"
    "firebase" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg"
    "laravel" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/laravel/laravel-plain.svg"
    "express" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/express/express-original.svg"
    "vite" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vitejs/vitejs-original.svg"
}

Write-Host "Starting tech icons download..." -ForegroundColor Cyan
Write-Host "Target directory: $iconsDir" -ForegroundColor Green

$successCount = 0
$failCount = 0

foreach ($icon in $icons.GetEnumerator()) {
    $name = $icon.Key
    $url = $icon.Value
    $outputPath = "$iconsDir/$name.svg"
    
    try {
        Write-Host "Downloading $name..." -ForegroundColor Yellow
        Invoke-WebRequest -Uri $url -OutFile $outputPath -UseBasicParsing
        
        if (Test-Path $outputPath) {
            $fileSize = (Get-Item $outputPath).Length
            Write-Host "  Success: $name.svg ($fileSize bytes)" -ForegroundColor Green
            $successCount++
        } else {
            Write-Host "  Failed: File not created" -ForegroundColor Red
            $failCount++
        }
    }
    catch {
        Write-Host "  Error: $($_.Exception.Message)" -ForegroundColor Red
        $failCount++
    }
}

Write-Host "`nDownload Summary:" -ForegroundColor Cyan
Write-Host "  Successfully downloaded: $successCount icons" -ForegroundColor Green
Write-Host "  Failed downloads: $failCount icons" -ForegroundColor Red
Write-Host "  Total icons processed: $($icons.Count)" -ForegroundColor Blue

if ($successCount -gt 0) {
    Write-Host "`nIcons saved to: $iconsDir" -ForegroundColor Green
    Write-Host "You can now use them in your Vue components!" -ForegroundColor Yellow
}