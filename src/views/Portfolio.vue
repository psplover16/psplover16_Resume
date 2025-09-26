<template>
  <div class="py-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- 頁面標題 -->
      <div class="text-center mb-16">
        <h1 class="section-title font-heading">作品集</h1>
        <p class="text-xl text-gray-600 font-sans">
          展示我的開發作品與創意專案
        </p>
      </div>

      <!-- 分類篩選 -->
      <div class="flex flex-wrap justify-center gap-4 mb-12">
        <button
          v-for="category in categories"
          :key="category.value"
          @click="selectedCategory = category.value"
          class="px-6 py-2 rounded-full font-medium transition-colors duration-200"
          :class="
            selectedCategory === category.value
              ? 'bg-primary-500 text-white'
              : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
          "
        >
          {{ category.label }}
        </button>
      </div>

      <!-- 專案列表 -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div
          v-for="project in filteredProjects"
          :key="project.id"
          class="card-project group hover:scale-105 transform transition-all duration-300"
        >
          <!-- 專案圖片 -->
          <div
            class="aspect-video bg-gray-200 rounded-lg mb-6 overflow-hidden relative flex-shrink-0"
          >
            <img
              :src="project.imageUrl"
              :alt="project.title"
              class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-300"
              @error="handleImageError"
            />
            <!-- 分類標籤 -->
            <div class="absolute top-4 left-4">
              <span
                class="bg-white/90 text-gray-800 px-3 py-1 rounded-full text-sm font-medium backdrop-blur-sm"
                :class="getCategoryColor(project.category)"
              >
                {{ getCategoryLabel(project.category) }}
              </span>
            </div>
            <!-- 精選標籤 -->
            <div v-if="project.featured" class="absolute top-4 right-4">
              <span
                class="bg-yellow-500 text-white px-2 py-1 rounded-full text-xs font-medium"
              >
                ⭐ 精選
              </span>
            </div>
          </div>

          <!-- 專案資訊 -->
          <div class="flex flex-col flex-grow p-6 pt-0">
            <h3
              class="text-xl font-bold mb-3 text-gray-800 group-hover:text-primary-600 transition-colors"
            >
              {{ project.title }}
            </h3>
            <p class="text-gray-600 mb-4 line-clamp-3 flex-grow">
              {{ project.description }}
            </p>

            <!-- 技術標籤 -->
            <div class="flex flex-wrap gap-2 mb-6">
              <span
                v-for="tech in project.technologies"
                :key="tech"
                class="bg-blue-100 text-blue-800 text-xs px-2 py-1 rounded-full"
              >
                {{ tech }}
              </span>
            </div>

            <!-- 操作按鈕 -->
            <div class="flex gap-3 mt-auto">
              <a
                v-if="project.demoUrl"
                :href="project.demoUrl"
                target="_blank"
                rel="noopener noreferrer"
                class="flex-1 bg-primary-500 hover:bg-primary-600 text-white text-center py-2 px-4 rounded-lg font-medium transition-colors duration-200 flex items-center justify-center gap-2"
              >
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    d="M11 3a1 1 0 100 2h2.586l-6.293 6.293a1 1 0 101.414 1.414L15 6.414V9a1 1 0 102 0V4a1 1 0 00-1-1h-5z"
                  ></path>
                  <path
                    d="M5 5a2 2 0 00-2 2v8a2 2 0 002 2h8a2 2 0 002-2v-1a1 1 0 10-2 0v1H5V7h1a1 1 0 000-2H5z"
                  ></path>
                </svg>
                查看展示
              </a>
              <a
                v-if="project.sourceUrl"
                :href="project.sourceUrl"
                target="_blank"
                rel="noopener noreferrer"
                class="flex-1 bg-gray-200 hover:bg-gray-300 text-gray-700 text-center py-2 px-4 rounded-lg font-medium transition-colors duration-200 flex items-center justify-center gap-2"
              >
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M12.316 3.051a1 1 0 01.633 1.265l-4 12a1 1 0 11-1.898-.632l4-12a1 1 0 011.265-.633zM5.707 6.293a1 1 0 010 1.414L3.414 10l2.293 2.293a1 1 0 11-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 011.414 0zm8.586 0a1 1 0 011.414 0l3 3a1 1 0 010 1.414l-3 3a1 1 0 11-1.414-1.414L16.586 10l-2.293-2.293a1 1 0 010-1.414z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
                原始碼
              </a>
            </div>
          </div>
        </div>
      </div>

      <!-- 無專案提示 -->
      <div v-if="filteredProjects.length === 0" class="text-center py-16">
        <svg
          class="w-16 h-16 text-gray-400 mx-auto mb-4"
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="2"
            d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"
          ></path>
        </svg>
        <h3 class="text-lg font-medium text-gray-600 mb-2">此分類暫無專案</h3>
        <p class="text-gray-500">請選擇其他分類查看更多作品</p>
      </div>

      <!-- Canvas 特效展示區 -->
      <section
        v-if="selectedCategory === 'all' || selectedCategory === 'effect'"
        class="mt-20"
      >
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-800 mb-4">Canvas 特效作品</h2>
          <p class="text-xl text-gray-600">各種視覺特效與互動動畫</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div
            v-for="effect in canvasEffects"
            :key="effect.id"
            class="card-effect hover:shadow-xl transition-shadow duration-300"
          >
            <div class="flex flex-col h-full">
              <h3 class="text-lg font-bold mb-2 text-gray-800">
                {{ effect.title }}
              </h3>
              <p class="text-gray-600 mb-4 flex-grow text-sm">
                {{ effect.description }}
              </p>
              <a
                :href="effect.url"
                target="_blank"
                rel="noopener noreferrer"
                class="btn-primary w-full text-center mt-auto"
              >
                查看特效
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup>
  import { ref, computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';

  const personalStore = usePersonalStore();
  const projects = computed(() => personalStore.projects);

  const selectedCategory = ref('all');

  // 分類選項
  const categories = [
    { value: 'all', label: '全部' },
    { value: 'web', label: '網頁開發' },
    { value: 'game', label: '遊戲開發' },
    { value: 'effect', label: '視覺特效' },
  ];

  // Canvas 特效作品
  const canvasEffects = [
    {
      id: 'effect1',
      title: '油脂在水面的效果',
      description: '模擬油脂在水面的流動與擴散效果',
      url: 'https://psplover16.github.io/canvasEffect_Ink2/',
    },
    {
      id: 'effect2',
      title: '煙霧炫彩功能',
      description: '彩色煙霧粒子動畫效果',
      url: 'https://psplover16.github.io/canvasEffect_Ink3/',
    },
    {
      id: 'effect3',
      title: '水波特效',
      description: '使用 jQuery 完成的水波漣漪特效',
      url: 'https://psplover16.github.io/canvasEffect_waterWave1/',
    },
    {
      id: 'effect4',
      title: '噴射粒子',
      description: '純 Canvas 實現的粒子噴射動畫',
      url: 'https://psplover16.github.io/whiteParticle1/',
    },
    {
      id: 'effect5',
      title: 'ClipPath 練習',
      description: 'CSS clipPath 屬性的創意應用',
      url: 'https://psplover16.github.io/cleanShoes/',
    },
  ];

  // 篩選後的專案
  const filteredProjects = computed(() => {
    if (selectedCategory.value === 'all') {
      return projects.value;
    }
    return projects.value.filter(
      project => project.category === selectedCategory.value
    );
  });

  // 取得分類標籤
  const getCategoryLabel = category => {
    const categoryMap = {
      web: '網頁開發',
      game: '遊戲開發',
      effect: '視覺特效',
    };
    return categoryMap[category] || category;
  };

  // 取得分類顏色
  const getCategoryColor = category => {
    const colorMap = {
      web: 'bg-blue-100 text-blue-800',
      game: 'bg-purple-100 text-purple-800',
      effect: 'bg-green-100 text-green-800',
    };
    return colorMap[category] || 'bg-gray-100 text-gray-800';
  };

  // 圖片錯誤處理
  const handleImageError = event => {
    const img = event.target;
    img.src =
      'https://via.placeholder.com/400x225/3b82f6/ffffff?text=Project+Image';
  };
</script>

<style scoped>
  .line-clamp-3 {
    display: -webkit-box;
    -webkit-line-clamp: 3;
    line-clamp: 3;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
</style>
