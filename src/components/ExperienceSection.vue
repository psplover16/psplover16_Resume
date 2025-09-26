<template>
  <section class="mb-16">
    <h2 class="text-2xl font-bold mb-8 text-center font-heading">經歷</h2>
    <div class="space-y-8">
      <!-- 使用 v-for 循環渲染經歷項目 -->
      <div v-for="(experience, index) in experiences" :key="index" class="card">
        <div class="flex items-start gap-4">
          <div class="w-12">
            <div
              :class="`w-12 h-12 ${experience.iconBg} rounded-full flex items-center justify-center`"
            >
              <svg
                :class="`w-6 h-6 ${experience.iconColor}`"
                fill="currentColor"
                viewBox="0 0 20 20"
                v-html="experience.iconSvg"
              ></svg>
              <img :src="experience.iconImg" class="w-full object-contain" />
            </div>
          </div>
          <div class="flex-1">
            <div class="flex justify-between items-end">
              <h3 class="text-xl font-semibold font-heading">
                {{ experience.title }}
              </h3>
              <h1 class="text-base font-semibold font-heading">
                {{ experience.title }}
              </h1>
            </div>
            <p class="text-primary-600 font-medium">
              {{ experience.subtitle }}
            </p>
            <p class="text-gray-600 mt-2 font-sans">
              {{ experience.description }}
            </p>
            <ul
              class="mt-2 text-sm text-gray-600 list-disc list-inside font-sans"
            >
              <li v-for="skill in experience.skills" :key="skill">
                {{ skill }}
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
  import { ref } from 'vue';
  import { fia, joyGame, taiwanJob, tendasoft } from '@/utils/profileImages.js';

  // 專案經歷數據
  const experiences = ref([
    {
      title: '職訓局-網頁前端課程',
      time: '108/05 ~ 108/09',
      subtitle: '基礎網頁訓練',
      description:
        '系統性學習網頁架構，專注於前端開發，並涵蓋基礎資料庫及後端應用的基本知識。',
      iconBg: '',
      iconColor: '',
      iconSvg: '',
      iconImg: taiwanJob,
      skills: [
        '學習Html網站基礎架構',
        '學習CSS文件操作',
        '學習Adobe Photoshop',
        '學習Adobe Illustrator',
        '學習php',
        '學習sql',
        '學習js/jq',
        '學習vue',
      ],
    },
    // {
    //   title: '網頁開發專案',
    //   time: '',
    //   subtitle: '一頁式網站、企業官網開發',
    //   description:
    //     '開發響應式網頁應用程式，使用現代前端技術如 Vue.js、Tailwind CSS， 並實現 RWD 設計，確保在各種裝置上都有良好的使用體驗。',
    //   iconBg: 'bg-blue-100',
    //   iconColor: 'text-blue-600',
    //   icon: `<path fill-rule="evenodd" d="M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zm0 4a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1V8zm8 0a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1h-6a1 1 0 01-1-1V8z" clip-rule="evenodd"></path>`,
    //   skills: [
    //     '使用 Tailwind CSS 與傳統 CSS 兩種方式進行切版',
    //     '實現響應式設計，支援多種裝置',
    //     '優化網站效能與使用者體驗',
    //   ],
    // },
    // {
    //   title: '全端網站開發',
    //   time: '',
    //   subtitle: '刑事筆記平台',
    //   description:
    //     '建立完整的內容管理系統，包含前後端開發、資料庫設計、API 設計等， 提供使用者友善的學習筆記分享平台。',
    //   iconBg: 'bg-green-100',
    //   iconColor: 'text-green-600',
    //   icon: `<path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>`,
    //   skills: [
    //     '使用 PHP + MySQL 建置後端系統',
    //     'Bootstrap + jQuery 前端框架',
    //     'API 設計與串接',
    //     'RWD 響應式設計',
    //   ],
    // },
    // {
    //   title: '遊戲開發專案',
    //   time: '',
    //   subtitle: '武士地下城',
    //   description:
    //     '使用 Unity 引擎開發的 2D RPG 遊戲，包含完整的遊戲系統設計， 如戰鬥系統、物品系統、商店系統等。',
    //   iconBg: 'bg-purple-100',
    //   iconColor: 'text-purple-600',
    //   icon: `<path fill-rule="evenodd" d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z" clip-rule="evenodd"></path>`,
    //   skills: [
    //     'Unity + C# 遊戲開發',
    //     '遊戲系統設計與實作',
    //     'UI/UX 設計',
    //     '遊戲企劃與腳本撰寫',
    //   ],
    // },
  ]);
</script>
