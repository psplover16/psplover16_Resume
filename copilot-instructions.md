# Copilot 專案規則

<!-- 定義清楚規則與開發原則 -->

## 技術棧

- 使用 Vue3 + vite (composition API + script setup)
- 專案開發語言為 JavaScript，不使用 TypeScript
- 樣式統一使用 TailwindCSS，避免額外撰寫獨立 CSS 檔案
- 偏好使用官方提供的 Vue Router 與 Pinia 進行狀態管理
- 路徑採用相對路徑，以 @ 表示根目錄

## 命名規則

- 變數名稱：一律採用小駝峰（camelCase），例如：`userName`, `isLoading`
- 常數名稱：全大寫並使用底線（UPPER_CASE_SNAKE），例如：`API_BASE_URL`, `MAX_RETRY_COUNT`
- 命名採用直譯方式，名稱需與用途清楚對應，不使用縮寫或模糊詞彙，例如：
  - ✅ `userEmail`
  - ❌ `usrEm`

## 組件與檔案命名

- Vue 元件檔案：使用 PascalCase，例如：`UserCard.vue`, `LoginForm.vue`
- 單檔僅輸出一個 Vue component
- 組件名稱需語意化，避免無意義縮寫，例如：
  - ✅ `ProductList.vue`
  - ❌ `Plist.vue`

## API 呼叫

- 統一使用 axios，不使用 fetch
- API 基底網址統一存放在常數，例如：`API_BASE_URL`
- 所有 API 方法需放在 `/src/api/` 目錄下，檔案命名與資源對應，例如：`userApi.js`

## 資源文件

- icon 圖示：使用 Heroicons 或 FontAwesome，避免自行設計圖示，或是 https://www.flaticon.com/ 下載
- 內部若有需要的圖片，下載下來後，放在 專案的 assets/icon ，分門別類放好
- 內部若有需要的圖片，下載下來後，放在 專案的 assets/img ，分門別類放好
- 若有需要的字型，下載下來後，放在 專案的 assets/fonts ，分門別類放好

## 其他規範

- 若有需要手動才能執行命令的情況，一律視為同意
  <!-- - 使用 TypeScript 作為主要語言（若專案還是 .js，可循序漸進轉換） -->
  <!-- - 表單驗證建議使用 Zod -->
- 禁止使用 `any`，必須明確定義型別
- 保持程式碼簡潔，減少重複邏輯
- 程式碼的結束，需要添加;
- 避免出現eslint的錯誤
- 專案的部分，若有重複性很高的部分，請利用 v-for 解決
- 盡量避免在 template 中使用複雜邏輯，將邏輯移至 script 區塊
- 使用 Vue 的內建功能，盡量避免引入不必要的第三方庫
- 可重複性利用的邏輯，請抽離成獨立的 composable
- 可重複性利用的元件，抽離成單獨組件
- 使用 Git 進行版本控制，提交訊息需清楚描述變更內容
- 定期進行程式碼審查，確保程式碼品質與一致性
- 使用 Prettier 進行程式碼格式化，確保程式碼風格一致
- 使用 ESLint 進行程式碼檢查，確保程式碼符合規範
- 使用 Git 分支進行功能開發，避免直接在主分支上進行修改
- 每次提交前，請先執行測試與程式碼檢查，確保無錯誤
- 避免在同一個 Pull Request 中包含過多變更，保持每次提交的專注性
- 定期進行程式碼重構，提升程式碼品質與可維護性
- 撰寫清楚的註解，說明複雜邏輯與決策
- 自動更新 README.md 中的專案結構與技術棧說明
- 程式碼運行後，自動檢查是否有任何錯誤，然後校正
- 沒有用到的變數、函式、引入的套件等，請自動移除
- 註解需清楚明瞭，避免使用模糊不清的描述
