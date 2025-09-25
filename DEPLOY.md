# 部署指南

## 本地開發

1. 安裝依賴：

```bash
npm install
```

2. 啟動開發服務器：

```bash
npm run dev
```

3. 在瀏覽器中打開：`http://localhost:3000`

## 部署到 GitHub Pages

### 方式一：自動部署（推薦）

1. 將專案推送到 GitHub 儲存庫
2. 在儲存庫設置中啟用 GitHub Pages
3. 選擇 GitHub Actions 作為部署來源
4. 每次推送到 `main` 分支時將自動部署

### 方式二：手動部署

1. 構建專案：

```bash
npm run build
```

2. 將 `dist` 目錄內容部署到您的網站伺服器

## 環境變數

可以在 `.env.local` 文件中設置：

```
VITE_APP_TITLE=個人履歷網站
```

## 自定義配置

- 修改個人資訊：編輯 `src/stores/personalStore.ts`
- 調整樣式：編輯 `tailwind.config.ts`
- 添加新頁面：在 `src/views/` 添加組件並在 `src/router/index.ts` 註冊路由
