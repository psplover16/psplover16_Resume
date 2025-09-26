<template>
  <div class="min-h-screen bg-gray-50 py-4 sm:py-8 lg:py-12 overflow-x-hidden">
    <div class="max-w-6xl mx-auto px-3 sm:px-4 md:px-6 lg:px-8 w-full">
      <!-- 頁面標題 -->
      <div class="text-center mb-12 sm:mb-16">
        <h1 class="text-3xl sm:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">
          工作經歷
        </h1>
        <p class="text-lg sm:text-xl text-gray-600 max-w-3xl mx-auto px-4">
          我的職業發展歷程，展示我在不同公司和專案中累積的經驗與技能
        </p>
      </div>

      <!-- 經歷時間軸 -->
      <div class="relative w-full">
        <!-- 時間軸線條 - 響應式調整 -->
        <div
          class="absolute left-3 sm:left-5 lg:left-1/2 top-0 bottom-0 w-0.5 bg-primary-200 transform lg:-translate-x-px hidden lg:inline-block"
        ></div>

        <!-- 經歷項目 -->
        <div class="space-y-8 sm:space-y-12 w-full">
          <ExperienceItem
            v-for="(experience, index) in workExperience"
            :key="experience.id"
            :experience="experience"
            :isReversed="index % 2 === 1"
          />
        </div>
      </div>

      <!-- 技能進展總覽 -->
      <div class="mt-20">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-4">技能發展歷程</h2>
          <div class="w-24 h-1 bg-primary-500 mx-auto rounded"></div>
          <p class="text-gray-600 mt-4">隨著工作經驗累積而不斷精進的技術技能</p>
        </div>

        <div
          class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6 lg:gap-8 w-full"
        >
          <!-- 前端開發 -->
          <div class="card-fixed-height hover:shadow-xl transition-shadow">
            <div class="text-center mb-6">
              <div
                class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4"
              >
                <i class="fab fa-html5 text-3xl text-blue-600"></i>
              </div>
              <h3 class="text-xl font-bold text-gray-900">前端開發</h3>
            </div>
            <div class="space-y-3 flex-grow">
              <div class="flex justify-between items-center">
                <span class="text-gray-600">Vue.js</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-4/5 h-2 bg-blue-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">90%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">JavaScript</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-4/5 h-2 bg-yellow-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">85%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">HTML/CSS</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-4/5 h-2 bg-green-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">90%</span>
                </div>
              </div>
            </div>
          </div>

          <!-- 後端開發 -->
          <div class="card-fixed-height hover:shadow-xl transition-shadow">
            <div class="text-center mb-6">
              <div
                class="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4"
              >
                <i class="fas fa-server text-3xl text-purple-600"></i>
              </div>
              <h3 class="text-xl font-bold text-gray-900">後端開發</h3>
            </div>
            <div class="space-y-3 flex-grow">
              <div class="flex justify-between items-center">
                <span class="text-gray-600">PHP</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-3/5 h-2 bg-purple-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">70%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">MySQL</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-3/5 h-2 bg-orange-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">75%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">Node.js</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-3/5 h-2 bg-indigo-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">60%</span>
                </div>
              </div>
            </div>
          </div>

          <!-- 工具技能 -->
          <div class="card-fixed-height hover:shadow-xl transition-shadow">
            <div class="text-center mb-6">
              <div
                class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4"
              >
                <i class="fas fa-tools text-3xl text-green-600"></i>
              </div>
              <h3 class="text-xl font-bold text-gray-900">開發工具</h3>
            </div>
            <div class="space-y-3 flex-grow">
              <div class="flex justify-between items-center">
                <span class="text-gray-600">Git</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-4/5 h-2 bg-green-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">80%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">Vite</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-4/5 h-2 bg-cyan-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">85%</span>
                </div>
              </div>
              <div class="flex justify-between items-center">
                <span class="text-gray-600">Unity</span>
                <div class="flex items-center">
                  <div class="w-20 h-2 bg-gray-200 rounded-full mr-2">
                    <div class="w-3/5 h-2 bg-red-500 rounded-full"></div>
                  </div>
                  <span class="text-sm text-gray-500">70%</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';
  import ExperienceItem from '@/components/ExperienceItem.vue';

  const personalStore = usePersonalStore();

  // 取得工作經歷資料
  const workExperience = computed(() => personalStore.workExperience);
</script>

<style scoped>
  /* 時間軸動畫效果 */
  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(30px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .experience-card {
    animation: fadeInUp 0.6s ease-out forwards;
  }

  /* 響應式調整 */
  @media (max-width: 768px) {
    .timeline-line {
      left: 1.5rem;
    }

    .timeline-dot {
      left: 1.5rem;
    }

    .experience-content {
      margin-left: 4rem;
    }
  }
</style>
