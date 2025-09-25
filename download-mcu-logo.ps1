# 銘傳大學校徽下載腳本

# 創建目錄
$logoDir = "public/assets/img/education"
if (-not (Test-Path $logoDir)) {
    New-Item -Path $logoDir -ItemType Directory -Force
    Write-Host "創建教育機構圖標目錄: $logoDir" -ForegroundColor Green
}

# 銘傳大學校徽來源
$mcuLogoUrls = @{
    "mcu-logo.png" = "https://www.mcu.edu.tw/images/logo.png"
    "mcu-logo-alt.png" = "https://upload.wikimedia.org/wikipedia/zh/thumb/8/8a/Ming_Chuan_University_logo.svg/240px-Ming_Chuan_University_logo.svg.png"
}

Write-Host "開始下載銘傳大學校徽..." -ForegroundColor Cyan

$successCount = 0
$failCount = 0

foreach ($logo in $mcuLogoUrls.GetEnumerator()) {
    $filename = $logo.Key
    $url = $logo.Value
    $outputPath = "$logoDir/$filename"
    
    try {
        Write-Host "下載 $filename..." -ForegroundColor Yellow
        Invoke-WebRequest -Uri $url -OutFile $outputPath -UseBasicParsing
        
        if (Test-Path $outputPath) {
            $fileSize = (Get-Item $outputPath).Length
            Write-Host "  成功: $filename ($fileSize bytes)" -ForegroundColor Green
            $successCount++
        } else {
            Write-Host "  失敗: 檔案未建立" -ForegroundColor Red
            $failCount++
        }
    }
    catch {
        Write-Host "  錯誤: $($_.Exception.Message)" -ForegroundColor Red
        $failCount++
    }
}

Write-Host "`n下載摘要:" -ForegroundColor Cyan
Write-Host "  成功下載: $successCount 個檔案" -ForegroundColor Green
Write-Host "  下載失敗: $failCount 個檔案" -ForegroundColor Red

if ($successCount -gt 0) {
    Write-Host "`n檔案儲存位置: $logoDir" -ForegroundColor Green
    Write-Host "您現在可以在 About.vue 中使用本地校徽了！" -ForegroundColor Yellow
}