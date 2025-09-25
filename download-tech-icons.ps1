# 技術圖標下載腳本
# 這個腳本會幫助您下載常見的程式語言和技術框架圖標

# 創建圖標目錄
$iconDir = "src/assets/img/icons"
if (-not (Test-Path $iconDir)) {
    New-Item -Path $iconDir -ItemType Directory -Force
    Write-Host "創建圖標目錄: $iconDir" -ForegroundColor Green
}

# 定義技術圖標資源（來自 CDN 和免費資源）
$techIcons = @{
    # 前端技術
    "vue.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg"
    "javascript.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg"
    "typescript.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg"
    "html5.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg"
    "css3.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg"
    "tailwindcss.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tailwindcss/tailwindcss-plain.svg"
    "bootstrap.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg"
    "jquery.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jquery/jquery-original.svg"
    
    # 後端技術
    "php.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg"
    "nodejs.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg"
    "python.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg"
    "java.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg"
    "csharp.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/csharp/csharp-original.svg"
    
    # 資料庫
    "mysql.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg"
    "postgresql.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg"
    "mongodb.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mongodb/mongodb-original.svg"
    
    # 開發工具
    "git.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"
    "vscode.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg"
    "webpack.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/webpack/webpack-original.svg"
    "vite.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vite/vite-original.svg"
    
    # 其他
    "unity.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/unity/unity-original.svg"
    "docker.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg"
    "linux.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg"
    "windows.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/windows8/windows8-original.svg"
}

Write-Host "`nStarting to download tech icons..." -ForegroundColor Cyan
Write-Host "來源: DevIcons (https://devicons.github.io/devicon/)" -ForegroundColor Yellow

$successCount = 0
$failCount = 0

foreach ($filename in $techIcons.Keys) {
    $url = $techIcons[$filename]
    $outputPath = Join-Path $iconDir $filename
    
    try {
        Write-Host "下載中: $filename" -ForegroundColor Yellow
        
        # 使用 Invoke-WebRequest 下載檔案
        $response = Invoke-WebRequest -Uri $url -OutFile $outputPath -PassThru -ErrorAction Stop
        
        # 檢查檔案是否成功下載且有內容
        if ((Test-Path $outputPath) -and (Get-Item $outputPath).Length -gt 0) {
            Write-Host "✓ 成功: $filename ($(Get-Item $outputPath).Length bytes)" -ForegroundColor Green
            $successCount++
        } else {
            Write-Host "✗ 失敗: $filename - 檔案為空或不存在" -ForegroundColor Red
            $failCount++
        }
    } catch {
        Write-Host "✗ 失敗: $filename - $($_.Exception.Message)" -ForegroundColor Red
        $failCount++
    }
    
    # 避免請求過於頻繁
    Start-Sleep -Milliseconds 200
}

Write-Host "`n=== 下載完成 ===" -ForegroundColor Cyan
Write-Host "成功: $successCount 個圖標" -ForegroundColor Green
Write-Host "失敗: $failCount 個圖標" -ForegroundColor Red
Write-Host "圖標保存位置: $iconDir" -ForegroundColor Yellow

# 生成圖標使用範例
$exampleFile = "icon-usage-example.md"
Write-Host "`n生成使用範例: $exampleFile" -ForegroundColor Blue

$exampleContent = @"
# 技術圖標使用範例

## Vue 組件中使用

``````vue
<template>
  <div class="skill-icon">
    <img src="@/assets/img/icons/vue.svg" alt="Vue.js" class="w-8 h-8" />
    <span>Vue.js</span>
  </div>
</template>
``````

## CSS 中作為背景圖片

``````css
.tech-vue {
  background-image: url('@/assets/img/icons/vue.svg');
  background-size: contain;
  background-repeat: no-repeat;
}
``````

## 動態載入圖標

``````javascript
const getSkillIcon = (skillName) => {
  const iconMap = {
    'Vue.js': 'vue.svg',
    'JavaScript': 'javascript.svg',
    'TypeScript': 'typescript.svg',
    'HTML5': 'html5.svg',
    'CSS3': 'css3.svg',
    // ... 更多映射
  };
  
  const iconFile = iconMap[skillName];
  return iconFile ? `/src/assets/img/icons/${'$'}{iconFile}` : null;
};
``````

## 可用的圖標列表

$(($techIcons.Keys | Sort-Object) -join ", ")

## 圖標來源

- **DevIcons**: https://devicons.github.io/devicon/
- **授權**: MIT License
- **用途**: 免費用於個人和商業專案

"@

$exampleContent | Out-File -FilePath $exampleFile -Encoding UTF8
Write-Host "範例檔案已生成: $exampleFile" -ForegroundColor Green

Write-Host "`n圖標下載腳本執行完成！" -ForegroundColor Cyan