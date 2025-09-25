# Jun Xiao 個人履歷網站 💼

> 現代化的個人履歷網站，使用 Vue 3 + Vite + JavaScript + TailwindCSS 建置

[![Vue 3](https://img.shields.io/badge/Vue-3.x-4FC08D?logo=vue.js)](https://vuejs.org/)
[![JavaScript](https://img.shields.io/badge/JavaScript-ES2022-F7DF1E?logo=javascript)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Vite](https://img.shields.io/badge/Vite-4.x-646CFF?logo=vite)](https://vitejs.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-3.x-06B6D4?logo=tailwind-css)](https://tailwindcss.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🚀 專案特色

- ⚡ **現代化技術棧**: Vue 3 Composition API + Vite + JavaScript
- 🎨 **響應式設計**: 使用 TailwindCSS 打造優雅的視覺體驗
- 📱 **移動端優化**: 完美適配各種裝置尺寸
- 🔄 **路由管理**: Vue Router 實現 SPA 頁面切換
- 📦 **狀態管理**: Pinia 集中管理應用狀態
- 🎭 **頁面動畫**: 流暢的轉場效果和互動動畫
- 🔍 **SEO 優化**: 完整的 Meta 標籤配置
- 🚀 **自動部署**: GitHub Actions 自動化部署流程

## 🛠 技術架構

### 前端框架

- **Vue 3** - 漸進式 JavaScript 框架
- **Vite** - 新一代前端建構工具
- **Vue Router 4** - 官方路由管理器
- **Pinia** - Vue 3 狀態管理

### 樣式系統

- **TailwindCSS** - Utility-first CSS 框架
- **PostCSS** - CSS 後處理器
- **Autoprefixer** - 自動添加 CSS 前綴

### 開發工具

- **ESLint** - JavaScript 程式碼檢查工具
- **Prettier** - 程式碼格式化工具
- **Font Awesome** - 圖標庫

## 📂 專案結構

```
junxiao/
├── public/                     # 靜態資源
│   └── assets/                 # 圖片資源
│       ├── img/               # 圖片檔案
│       │   ├── profile/       # 個人照片
│       │   └── projects/      # 專案截圖
│       └── icon/              # 圖標檔案
├── src/
│   ├── components/            # 組件目錄
│   │   └── layout/           # 佈局組件
│   │       ├── NavBar.vue    # 導航欄
│   │       └── AppFooter.vue # 頁腳
│   ├── router/               # 路由配置
│   │   └── index.js         # 路由定義
│   ├── stores/               # Pinia 狀態管理
│   │   └── personalStore.js  # 個人資料 store
│   ├── views/                # 頁面組件
│   │   ├── Home.vue         # 首頁
│   │   ├── About.vue        # 關於我
│   │   ├── Experience.vue   # 工作經歷
│   │   ├── Portfolio.vue    # 作品集
│   │   ├── Skills.vue       # 技能專長
│   │   └── Contact.vue      # 聯絡方式
│   ├── assets/              # 樣式資源
│   ├── App.vue             # 根組件
│   └── main.js             # 應用入口
├── .github/
│   └── workflows/
│       └── deploy.yml       # GitHub Actions 部署配置
├── .eslintrc.json          # ESLint 配置
├── .prettierrc             # Prettier 配置
├── vite.config.js          # Vite 配置
├── tailwind.config.js      # TailwindCSS 配置
├── postcss.config.js       # PostCSS 配置
└── package.json            # 專案依賴配置
```

## 🎯 主要頁面

### 🏠 首頁 (Home)

- 個人簡介和技能概述
- 精選專案展示
- 快速導航功能

### 👤 關於我 (About)

- 個人背景介紹
- 興趣愛好展示
- 個人價值觀

### 💼 工作經歷 (Experience)

- 時間軸式經歷展示
- 詳細工作內容描述
- 技能發展歷程
- 主要成就展示

### 🎨 作品集 (Portfolio)

- 專案分類展示
- 技術棧標籤
- 線上展示連結
- 專案詳細描述

### 🛠 技能專長 (Skills)

- 技能熟練度展示
- 分類技能管理
- 視覺化技能水準

### 📬 聯絡方式 (Contact) "目前先把能進到這一頁面的正規方式隱藏"

- 聯絡表單
- 個人聯絡資訊
- 社群媒體連結

## 🚦 快速開始

### 環境要求

- Node.js >= 16
- npm >= 8

### 安裝步驟

1. **克隆專案**

   ```bash
   git clone https://github.com/psplover16/junxiao.git
   cd junxiao
   ```

2. **安裝依賴**

   ```bash
   npm install
   ```

3. **開發模式啟動**

   ```bash
   npm run dev
   ```

4. **生產環境建置**

   ```bash
   npm run build
   ```

5. **預覽建置結果**
   ```bash
   npm run preview
   ```

### 開發指令

```bash
# 開發伺服器
npm run dev

# 建置專案
npm run build

# 預覽建置結果
npm run preview

# 程式碼檢查
npm run lint

# 程式碼格式化
npm run format
```

## 🌐 部署配置

### GitHub Pages 自動部署

專案已配置 GitHub Actions 自動部署流程：

1. **觸發條件**: 推送到 `main` 分支
2. **建置流程**:
   - 安裝 Node.js 18 環境
   - 安裝專案依賴
   - 執行專案建置
   - 部署到 GitHub Pages

3. **部署結果**: 自動更新到 `https://psplover16.github.io/`

### 手動部署

```bash
# 建置專案
npm run build

# 上傳 dist 目錄內容到伺服器
```

## 📈 專案特點

### 性能優化

- **懶載入**: 路由組件按需載入
- **代碼分割**: 自動分割 JavaScript 包
- **資源壓縮**: 生產環境自動壓縮
- **快取策略**: 合理的資源快取配置

### 開發體驗

- **熱重載**: 開發時即時更新
- **錯誤處理**: 友好的錯誤提示
- **類型檢查**: ESLint 程式碼品質保證
- **格式統一**: Prettier 自動格式化

### 可維護性

- **組件化**: 高度模組化的組件設計
- **狀態管理**: 集中式狀態管理
- **配置分離**: 環境配置外部化
- **文檔完整**: 詳細的開發文檔

## 🎨 設計原則

### 響應式設計

- **移動優先**: Mobile-first 設計策略
- **彈性佈局**: Flexbox 和 Grid 佈局
- **適應性**: 完美適配各種螢幕尺寸

### 使用者體驗

- **直觀導航**: 清晰的頁面結構
- **快速載入**: 優化的載入速度
- **無障礙設計**: 支援螢幕閱讀器
- **交互友好**: 流暢的動畫效果

### 視覺設計

- **簡潔現代**: 乾淨的設計風格
- **色彩協調**: 一致的品牌色彩
- **字體優化**: 易讀的字體選擇
- **圖標統一**: Font Awesome 圖標系統

## 🔧 自定義配置

### 修改個人資訊

編輯 `src/stores/personalStore.js` 檔案更新個人資訊：

```javascript
personalInfo: {
  name: '你的名字',
  title: '你的職稱',
  email: '你的信箱',
  // ...其他資訊
}
```

### 新增專案作品

在 `personalStore.js` 的 `projects` 陣列中新增專案：

```javascript
projects: [
  {
    id: 6,
    title: '新專案名稱',
    category: 'web-development',
    description: '專案描述',
    technologies: ['Vue.js', 'JavaScript'],
    // ...其他屬性
  },
];
```

### 自定義主題色彩

修改 `tailwind.config.js` 中的色彩配置：

```javascript
theme: {
  extend: {
    colors: {
      primary: {
        500: '#你的主色調',
        // ...其他色階
      }
    }
  }
}
```

## 📄 授權條款

本專案採用 [MIT License](LICENSE) 授權條款。

## 🤝 貢獻指南

歡迎提交 Issue 和 Pull Request！

## 📞 聯絡資訊

- **Email**: a01111775@gmail.com
- **GitHub**: [psplover16](https://github.com/psplover16)
- **LINE**: a8i_2Npubl
- **Website**: [https://psplover16.github.io/](https://psplover16.github.io/)

---

⭐ 如果這個專案對你有幫助，請給個 Star 支持一下！
