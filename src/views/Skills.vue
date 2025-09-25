<template>
  <div class="py-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- 頁面標題 -->
      <div class="text-center mb-16">
        <h1 class="section-title font-heading">技能專長</h1>
        <p class="text-xl text-gray-600 font-sans">我的技術能力與專業領域</p>
      </div>

      <!-- 技能統計卡片 -->
      <div id="skill-stats-section" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-16">
        <div
          v-for="category in skillCategories"
          :key="category.id"
          :class="[
            'group text-white p-6 rounded-xl shadow-lg cursor-pointer transform transition-all duration-300 hover:scale-105 hover:shadow-xl',
            category.gradient,
          ]"
          @click="scrollToSection(category.id)"
        >
          <div class="flex items-center justify-between">
            <div>
              <p :class="[category.textColor, 'text-sm font-medium']">
                {{ category.name }}
              </p>
              <p class="text-2xl font-bold">{{ category.count }}</p>
            </div>
            <div class="bg-white/20 p-3 rounded-lg">
              <svg class="w-6 h-6 transition-all duration-300 group-hover:animate-bounce" fill="currentColor" viewBox="0 0 20 20">
                <path
                  fill-rule="evenodd"
                  :d="category.iconPath"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </div>
          </div>
        </div>
      </div>

      <!-- 技能分類詳細列表 -->
      <div
        v-for="category in skillCategories"
        :key="`section-${category.id}`"
        :id="`${category.id}-section`"
        class="mb-16"
      >
        <div class="flex items-center mb-8">
          <!-- 動態圖標容器 -->
          <div :class="[category.bgColor, 'p-3 rounded-lg mr-4']">
            <svg
              class="w-8 h-8 transition-all duration-300 group-hover:animate-bounce"
              :class="category.iconColor"
              fill="currentColor"
              viewBox="0 0 20 20"
            >
              <path
                fill-rule="evenodd"
                :d="category.iconPath"
                clip-rule="evenodd"
              ></path>
            </svg>
          </div>
          <!-- 可點擊的標題，添加反向滾動功能 -->
          <div 
            class="cursor-pointer hover:opacity-70 transition-opacity duration-300"
            @click="scrollToSection('skill-stats')"
          >
            <h2 class="text-2xl font-heading font-bold text-gray-800">{{ category.name }}</h2>
            <p class="text-gray-600">{{ category.description }}</p>
          </div>
        </div>

        <!-- 動態技能卡片列表 -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <SkillCard
            v-for="skill in category.skills"
            :key="skill.name"
            :skill="skill"
          />
        </div>
      </div>

      <!-- 技能學習時間軸 -->
      <section class="mt-20">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 mb-4">學習歷程</h2>
          <p class="text-xl text-gray-600">我的技術成長軌跡</p>
        </div>

        <div class="max-w-4xl mx-auto">
          <div class="space-y-8">
            <div
              v-for="(milestone, index) in learningMilestones"
              :key="index"
              class="flex items-start"
            >
              <div
                class="flex-shrink-0 w-4 h-4 bg-primary-500 rounded-full mt-6 mr-6"
              ></div>
              <div class="card flex-1">
                <h3 class="text-lg font-bold mb-2">{{ milestone.title }}</h3>
                <p class="text-primary-600 font-medium mb-3">
                  {{ milestone.period }}
                </p>
                <p class="text-gray-600 mb-4">{{ milestone.description }}</p>
                <div class="flex flex-wrap gap-2">
                  <span
                    v-for="tech in milestone.technologies"
                    :key="tech"
                    class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full"
                  >
                    {{ tech }}
                  </span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup>
  import { computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';
  import SkillCard from '@/components/SkillCard.vue';

  const personalStore = usePersonalStore();

  // 技能分類統計和詳細信息（包含所有需要的資料）
  const skillCategories = computed(() => {
    const categories = [
      {
        id: 'frontend',
        name: '前端技術',
        description: '用戶界面開發與互動設計',
        gradient: 'bg-gradient-to-br from-blue-500 to-blue-600',
        textColor: 'text-blue-100',
        bgColor: 'bg-blue-100',
        iconColor: 'text-blue-600',
        skills: personalStore.skillsByCategory('frontend'),
        iconPath: 'M3 4a1 1 0 011-1h12a1 1 0 011 1v2a1 1 0 01-1 1H4a1 1 0 01-1-1V4zm0 4a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H4a1 1 0 01-1-1V8zm8 0a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1h-6a1 1 0 01-1-1V8z'
      },
      {
        id: 'backend',
        name: '後端技術',
        description: '服務器端開發與 API 設計',
        gradient: 'bg-gradient-to-br from-green-500 to-green-600',
        textColor: 'text-green-100',
        bgColor: 'bg-green-100',
        iconColor: 'text-green-600',
        skills: personalStore.skillsByCategory('backend'),
        iconPath: 'M2 5a2 2 0 012-2h8a2 2 0 012 2v10a2 2 0 002 2H4a2 2 0 01-2-2V5zm3 1h6v4H5V6zm6 6H5v2h6v-2z'
      },
      {
        id: 'database',
        name: '資料庫技術',
        description: '數據存儲與管理',
        gradient: 'bg-gradient-to-br from-purple-500 to-purple-600',
        textColor: 'text-purple-100',
        bgColor: 'bg-purple-100',
        iconColor: 'text-purple-600',
        skills: personalStore.skillsByCategory('database'),
        iconPath: 'M3 4a1 1 0 000 2h.01a1 1 0 100-2H3zm3 0a1 1 0 000 2h10a1 1 0 100-2H6zm3 6a1 1 0 000 2h.01a1 1 0 100-2H9zm3 0a1 1 0 000 2h4a1 1 0 100-2h-4zm3 6a1 1 0 000 2h.01a1 1 0 100-2H15zm3 0a1 1 0 000 2h4a1 1 0 100-2h-4z'
      },
      {
        id: 'tools',
        name: '開發工具',
        description: '開發環境與工具鏈',
        gradient: 'bg-gradient-to-br from-orange-500 to-orange-600',
        textColor: 'text-orange-100',
        bgColor: 'bg-orange-100',
        iconColor: 'text-orange-600',
        skills: personalStore.skillsByCategory('tools'),
        iconPath: 'M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z'
      },
      {
        id: 'other',
        name: '其他技術',
        description: '遊戲開發與特殊技能',
        gradient: 'bg-gradient-to-br from-indigo-500 to-indigo-600',
        textColor: 'text-indigo-100',
        bgColor: 'bg-indigo-100',
        iconColor: 'text-indigo-600',
        skills: personalStore.skillsByCategory('other'),
        iconPath: 'M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z'
      }
    ];

    return categories.map(category => ({
      ...category,
      count: category.skills.length
    }));
  });

  // 滑動到指定區域的函數
  const scrollToSection = sectionId => {
    let targetElement;
    
    // 如果是滾動回統計區域，使用 skill-stats-section ID
    if (sectionId === 'skill-stats') {
      targetElement = document.getElementById('skill-stats-section');
    } else {
      // 其他情況滾動到技能詳細區域
      targetElement = document.getElementById(`${sectionId}-section`);
    }
    
    if (targetElement) {
      const offsetTop = targetElement.offsetTop - 100; // 減去100px作為頂部間距
      window.scrollTo({
        top: offsetTop,
        behavior: 'smooth',
      });
    }
  };

  // 學習歷程
  const learningMilestones = [
    {
      title: '網頁基礎學習',
      period: '大學初期',
      description:
        '開始學習網頁開發基礎技術，包含 HTML、CSS、JavaScript 等前端技術，並建立第一個網頁作品。',
      technologies: ['HTML', 'CSS', 'JavaScript', 'Bootstrap'],
    },
    {
      title: '後端技術探索',
      period: '大學中期',
      description:
        '深入學習後端開發技術，使用 PHP 與 MySQL 建置動態網站，完成刑事筆記專案。',
      technologies: ['PHP', 'MySQL', 'API 設計', 'jQuery'],
    },
    {
      title: '現代前端框架',
      period: '近期',
      description:
        '學習現代前端技術棧，使用 Vue.js 框架開發單頁應用程式，並導入 TypeScript 提升開發品質。',
      technologies: ['Vue.js', 'TypeScript', 'Vite', 'Tailwind CSS'],
    },
    {
      title: '遊戲開發與特效',
      period: '持續進行',
      description:
        '探索遊戲開發領域，使用 Unity 引擎創作遊戲作品，同時研究 Canvas 動畫與視覺特效。',
      technologies: ['Unity', 'C#', 'HTML5 Canvas', '遊戲設計'],
    },
  ];
</script>
