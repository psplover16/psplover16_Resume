# 圖片資源說明

## 目錄結構

```
public/assets/img/
├── profile/
│   └── avatar.png          # 個人頭像 (已從原網站下載)
└── projects/
    ├── one-page-site.svg   # 一頁式網站佔位圖
    ├── yuhe-site.svg       # 宇禾官網佔位圖
    ├── law-notes.svg       # 刑事筆記佔位圖
    ├── warrior-dungeon.svg # 武士地下城佔位圖
    └── canvas-effects.svg  # Canvas特效佔位圖
```

## 圖片來源

### 已下載的圖片

- **個人頭像**: 從 https://psplover16.github.io/assets/images/me-536x816.png 下載

### 需要截圖的專案頁面

為了獲得最佳的展示效果，建議您手動截圖以下頁面並替換 SVG 佔位圖：

1. **一頁式網站**
   - 網址: https://psplover16.github.io/FubanTest/dist/#/
   - 建議尺寸: 400x225 (16:9 比例)
   - 檔案名: `one-page-site.jpg`

2. **宇禾官網**
   - 網址: http://220.128.133.15/s1080209/fia/Offical/
   - 建議尺寸: 400x225 (16:9 比例)
   - 檔案名: `yuhe-site.jpg`

3. **刑事筆記**
   - 網址: http://220.128.133.15/s1080209/roc/law/
   - 建議尺寸: 400x225 (16:9 比例)
   - 檔案名: `law-notes.jpg`

4. **武士地下城**
   - 網址: http://220.128.133.15/s1080209/unity/web/dungeon1/
   - 建議尺寸: 400x225 (16:9 比例)
   - 檔案名: `warrior-dungeon.jpg`

5. **Canvas特效**
   - 網址: https://psplover16.github.io/canvasEffect_Ink2/
   - 建議尺寸: 400x225 (16:9 比例)
   - 檔案名: `canvas-effects.jpg`

## 如何替換圖片

1. 截圖或下載實際的專案圖片
2. 調整為 400x225 尺寸
3. 存放到 `public/assets/img/projects/` 目錄
4. 更新 `src/stores/personalStore.ts` 中的 `imageUrl` 路徑
5. 將副檔名從 `.svg` 改為 `.jpg` 或 `.png`

## 圖片優化建議

- 使用 WebP 格式以獲得更好的壓縮比
- 提供不同尺寸的圖片用於響應式設計
- 考慮使用 lazy loading 改善載入性能
- 為圖片添加適當的 alt 屬性以提升無障礙性
