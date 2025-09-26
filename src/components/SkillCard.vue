<template>
  <div class="card-skill group hover:shadow-xl transition-shadow duration-300">
    <div class="flex items-center justify-between mb-4">
      <div class="flex items-center space-x-3">
        <div
          class="w-10 h-10 rounded-lg flex items-center justify-center text-white font-bold text-sm"
          :class="getSkillColor(skill.category)"
        >
          {{ getSkillIcon(skill.name) }}
        </div>
        <h3 class="text-lg font-heading font-semibold text-gray-800 truncate">
          {{ skill.name }}
        </h3>
      </div>
      <span
        class="text-sm font-medium px-2 py-1 rounded-full whitespace-nowrap"
        :class="getLevelColor(skill.level)"
      >
        {{ getSkillLevel(skill.level) }}
      </span>
    </div>

    <!-- 技能進度條 -->
    <div class="mb-4">
      <div class="flex justify-between text-sm text-gray-600 mb-2">
        <span>熟練度</span>
        <span>{{ skill.level }}%</span>
      </div>
      <div class="w-full bg-gray-200 rounded-full h-3">
        <div
          class="h-3 rounded-full transition-all duration-1000 ease-out"
          :class="getProgressColor(skill.category)"
          :style="{ width: `${skill.level}%` }"
        ></div>
      </div>
    </div>

    <!-- 技能描述（根據技能名稱顯示） -->
    <div class="flex-grow">
      <p class="text-gray-600 text-sm leading-relaxed font-sans">
        {{ getSkillDescription(skill.name) }}
      </p>
    </div>
  </div>
</template>

<script setup>
  const props = defineProps({
    skill: {
      type: Object,
      required: true,
    },
  });

  // 取得技能圖示
  const getSkillIcon = skillName => {
    if (!skillName) return '?';

    const iconMap = {
      'Vue.js': 'V',
      JavaScript: 'JS',
      TypeScript: 'TS',
      HTML5: 'H5',
      CSS3: 'C3',
      'Tailwind CSS': 'TW',
      Bootstrap: 'BS',
      jQuery: 'JQ',
      PHP: 'PHP',
      'Node.js': 'N',
      MySQL: 'DB',
      Unity: 'U3D',
      'C#': 'C#',
      Git: 'Git',
      Vite: 'V',
      Webpack: 'W',
    };
    return iconMap[skillName] || skillName.charAt(0).toUpperCase();
  };

  // 取得技能分類顏色
  const getSkillColor = category => {
    const colorMap = {
      frontend: 'bg-blue-500',
      backend: 'bg-green-500',
      database: 'bg-purple-500',
      tools: 'bg-orange-500',
      other: 'bg-indigo-500',
    };
    return colorMap[category] || 'bg-gray-500';
  };

  // 取得進度條顏色
  const getProgressColor = category => {
    const colorMap = {
      frontend: 'bg-blue-500',
      backend: 'bg-green-500',
      database: 'bg-purple-500',
      tools: 'bg-orange-500',
      other: 'bg-indigo-500',
    };
    return colorMap[category] || 'bg-gray-500';
  };

  // 取得技能等級標籤
  const getSkillLevel = level => {
    if (level >= 90) return '專精';
    if (level >= 80) return '熟練';
    if (level >= 70) return '進階';
    if (level >= 60) return '中級';
    return '初級';
  };

  // 取得等級顏色
  const getLevelColor = level => {
    if (level >= 90) return 'bg-red-100 text-red-800';
    if (level >= 80) return 'bg-yellow-100 text-yellow-800';
    if (level >= 70) return 'bg-green-100 text-green-800';
    if (level >= 60) return 'bg-blue-100 text-blue-800';
    return 'bg-gray-100 text-gray-800';
  };

  // 取得技能描述
  const getSkillDescription = skillName => {
    if (!skillName) return '技術相關應用';

    const descriptionMap = {
      'Vue.js': '現代前端框架，用於構建響應式單頁應用程式',
      JavaScript: 'Web 開發的核心語言，處理前端互動邏輯',
      TypeScript: 'JavaScript 的超集，提供靜態類型檢查',
      HTML5: '現代網頁標記語言，構建網頁結構',
      CSS3: '樣式表語言，控制網頁外觀與佈局',
      'Tailwind CSS': '實用優先的 CSS 框架，快速構建現代界面',
      Bootstrap: '響應式前端框架，快速開發網頁界面',
      jQuery: 'JavaScript 函式庫，簡化 DOM 操作',
      PHP: '服務端腳本語言，用於後端開發',
      'Node.js': 'JavaScript 運行環境，用於服務端開發',
      MySQL: '關聯式資料庫管理系統',
      Unity: '跨平台遊戲引擎，用於 2D/3D 遊戲開發',
      Cocos: '跨平台遊戲引擎，用於 2D/3D 遊戲開發',
      'C#': '物件導向程式語言，Unity 遊戲開發主要語言',
      Git: '分散式版本控制系統',
      Vite: '現代前端構建工具，快速開發體驗',
      Webpack: '模組打包工具，用於前端資源管理',
    };
    return descriptionMap[skillName] || `${skillName} 相關技術與應用`;
  };
</script>
