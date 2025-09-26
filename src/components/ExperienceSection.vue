<template>
  <section class="mb-16">
    <h2 class="text-2xl font-bold mb-8 text-center font-heading">學習經歷</h2>
    <div class="space-y-8">
      <!-- 使用 v-for 循環渲染經歷項目 -->
      <div v-for="(experience, index) in experiences" :key="index" class="card">
        <div class="flex items-start gap-4">
          <div class="w-12">
            <div
              :class="`w-12 h-12 ${experience.iconBg} rounded-full flex items-center justify-center`"
            >
              <!-- 如果有 SVG 圖示就顯示 SVG -->
              <svg
                v-if="experience.iconSvg"
                :class="`w-full h-full ${experience.iconColor}`"
                fill="currentColor"
                viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path :d="experience.iconSvg" />
              </svg>
              <!-- 如果有圖片就顯示圖片 -->
              <img
                v-if="experience.iconImg"
                :src="experience.iconImg"
                class="w-full object-contain"
              />
            </div>
          </div>
          <div class="flex-1">
            <div class="flex justify-between items-end">
              <h3 class="text-xl font-semibold font-heading">
                {{ experience.title }}
              </h3>
              <h1 class="text-base font-semibold font-heading">
                {{ experience.time }}
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
  import taiwanJob from '@/assets/img/profile/taiwanJob.png';
  import unityLogo from '@/assets/img/icons/unity.svg';
  import cocosLogo from '@/assets/img/icons/cocos.svg';

  // 專案經歷數據
  const experiences = ref([
    {
      title: '職訓局-物聯網應用設計',
      time: '2023/12 ~ 2024/04',
      subtitle: '物聯網應用開發',
      description:
        '廣泛學習物聯網應用相關知識及應用，包含硬體基礎、感測器應用、無線通訊技術、雲端平台與資料分析等，並進行實際專案開發。',
      iconBg: '',
      iconColor: '',
      iconSvg: '',
      iconImg: taiwanJob,
      skills: [
        '學習基本電學、數位邏輯',
        '學習各式感測器模組的應用',
        '學習Arduino的使用方式',
        '學習Esp32的使用方式',
        '學習硬體描述語言-Verilog',
        '學習python的應用',
        '學習C語言',
        '學習基礎的App製作',
        '學習基礎Linux應用',
      ],
    },
    {
      title: '自學遊戲開發',
      time: '',
      subtitle: 'Unity遊戲開發',
      description:
        '自學 Unity 引擎，用以開發各類 2D RPG 遊戲，包含各類常見的遊戲系統設計， 如戰鬥系統、物品系統、商店系統等......',
      iconBg: 'bg-yellow-100',
      iconColor: 'text-purple-600',
      iconSvg: '',
      iconImg: unityLogo,
      skills: [
        'Unity + C# 遊戲開發',
        '遊戲系統設計與實作',
        'UI/UX 設計',
        '遊戲企劃與腳本撰寫',
        '音效控制',
        '動畫設計',
        '專案管理',
      ],
    },
    {
      title: '自學遊戲開發',
      time: '',
      subtitle: 'Cocos2D遊戲開發',
      description:
        '自學 Cocos2D 引擎，用以開發各類 2D 遊戲，包含常見輕量小遊戲......',
      iconBg: 'bg-purple-100',
      iconColor: 'text-purple-600',
      iconSvg: '',
      iconImg: cocosLogo,
      skills: [
        'typeScript + Cocos 遊戲開發',
        '遊戲系統設計與實作',
        '團隊協作',
        '專案管理',
      ],
    },
    // {
    //   title: '自學遊戲開發',
    //   time: '2023/08 ~ 2023/11',
    //   subtitle: '專案-武士地下城',
    //   description:
    //     '使用 Unity 引擎開發的 2D RPG 遊戲，包含完整的遊戲系統設計， 如戰鬥系統、物品系統、商店系統等。',
    //   iconBg: 'bg-purple-100',
    //   iconColor: 'text-purple-600',
    //   iconSvg:
    //     'M12 2C8.5 2 6 4.5 6 8v2c0 1.5.5 3 1.5 4L6 16v4c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-4l-1.5-2c1-1 1.5-2.5 1.5-4V8c0-3.5-2.5-6-6-6zm-2 8c-.6 0-1-.4-1-1s.4-1 1-1 1 .4 1 1-.4 1-1 1zm4 0c-.6 0-1-.4-1-1s.4-1 1-1 1 .4 1 1-.4 1-1 1zm-2 4c-1.1 0-2-.9-2-2h4c0 1.1-.9 2-2 2z',
    //   iconImg: '',
    //   skills: [
    //     'Unity + C# 遊戲開發',
    //     '遊戲系統設計與實作',
    //     'UI/UX 設計',
    //     '遊戲企劃與腳本撰寫',
    //   ],
    // },
    // {
    //   title: '全端網站開發',
    //   time: '2019/08',
    //   subtitle: '刑事筆記平台',
    //   description:
    //     '建立完整的內容管理系統，包含前後端開發、資料庫設計、API 設計等， 提供使用者友善的學習筆記分享平台。',
    //   iconBg: 'bg-green-100',
    //   iconColor: 'text-green-600',
    //   iconSvg: 'M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z',
    //   iconImg: '',
    //   skills: [
    //     '使用 PHP + MySQL 建置後端系統',
    //     'Bootstrap + jQuery 前端框架',
    //     'API 設計與串接',
    //     'RWD 響應式設計',
    //   ],
    // },
    {
      title: '職訓局-網頁前端課程',
      time: '2019/05 ~ 2019/09',
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
  ]);
</script>
