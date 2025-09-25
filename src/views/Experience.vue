<template>
  <div class="min-h-screen bg-gray-50 py-12">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- 頁面標題 -->
      <div class="text-center mb-16">
        <h1 class="text-4xl font-bold text-gray-900 mb-4">工作經歷</h1>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
          我的職業發展歷程，展示我在不同公司和專案中累積的經驗與技能
        </p>
      </div>

      <!-- 經歷時間軸 -->
      <div class="relative">
        <!-- 時間軸線條 -->
        <div
          class="absolute left-6 md:left-1/2 top-0 bottom-0 w-0.5 bg-primary-200 transform md:-translate-x-px"
        ></div>

        <!-- 經歷項目 -->
        <div class="space-y-12">
          <div
            v-for="(experience, index) in workExperience"
            :key="experience.id"
            class="relative flex flex-col md:flex-row items-start"
            :class="{ 'md:flex-row-reverse': index % 2 === 1 }"
          >
            <!-- 時間軸圓點 -->
            <div
              class="absolute left-6 md:left-1/2 w-3 h-3 bg-primary-500 border-4 border-white rounded-full transform md:-translate-x-1.5 shadow-lg z-10"
            ></div>

            <!-- 經歷內容卡片 -->
            <div
              class="ml-16 md:ml-0 w-full md:w-1/2 transform transition-all duration-500 hover:scale-105"
              :class="{
                'md:pr-16': index % 2 === 0,
                'md:pl-16': index % 2 === 1,
              }"
            >
              <div
                class="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 p-8 border-l-4 border-primary-500"
              >
                <!-- 時間區間 -->
                <div class="flex items-center mb-4">
                  <i class="fas fa-calendar-alt text-primary-500 mr-3"></i>
                  <span
                    class="text-sm font-semibold text-primary-600 bg-primary-50 px-3 py-1 rounded-full"
                  >
                    {{ experience.period }}
                  </span>
                </div>

                <!-- 職位標題 -->
                <h3 class="text-2xl font-bold text-gray-900 mb-2">
                  {{ experience.position }}
                </h3>

                <!-- 公司名稱 -->
                <div class="flex items-center mb-4">
                  <i class="fas fa-building text-gray-500 mr-3"></i>
                  <h4 class="text-lg font-semibold text-gray-700">
                    {{ experience.company }}
                  </h4>
                </div>

                <!-- 工作描述 -->
                <p class="text-gray-600 mb-6 leading-relaxed">
                  {{ experience.description }}
                </p>

                <!-- 主要成就 -->
                <div class="mb-6">
                  <h5
                    class="flex items-center text-lg font-semibold text-gray-800 mb-3"
                  >
                    <i class="fas fa-trophy text-yellow-500 mr-3"></i>
                    主要成就
                  </h5>
                  <ul class="space-y-2">
                    <li
                      v-for="achievement in experience.achievements"
                      :key="achievement"
                      class="flex items-start"
                    >
                      <i
                        class="fas fa-check-circle text-green-500 mr-3 mt-1 flex-shrink-0"
                      ></i>
                      <span class="text-gray-600">{{ achievement }}</span>
                    </li>
                  </ul>
                </div>

                <!-- 技術技能 -->
                <div>
                  <h5
                    class="flex items-center text-lg font-semibold text-gray-800 mb-3"
                  >
                    <i class="fas fa-tools text-blue-500 mr-3"></i>
                    使用技術
                  </h5>
                  <div class="flex flex-wrap gap-2">
                    <span
                      v-for="skill in experience.skills"
                      :key="skill"
                      class="px-3 py-1 bg-blue-100 text-blue-800 text-sm font-medium rounded-full hover:bg-blue-200 transition-colors"
                    >
                      {{ skill }}
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 學歷背景 -->
      <div class="mt-20">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-4">教育背景</h2>
          <div class="w-24 h-1 bg-primary-500 mx-auto rounded"></div>
        </div>

        <div
          class="bg-white rounded-xl shadow-lg p-8 border-l-4 border-green-500"
        >
          <div
            class="flex flex-col md:flex-row items-start md:items-center justify-between"
          >
            <div class="flex-1">
              <h3 class="text-2xl font-bold text-gray-900 mb-2">
                <i class="fas fa-graduation-cap text-green-500 mr-3"></i>
                大學學歷
              </h3>
              <p class="text-lg text-gray-600 mb-4">
                在大學期間奠定了紮實的程式設計基礎，並透過多個專案實作累積實務經驗。
              </p>
              <div class="flex flex-wrap gap-2">
                <span
                  class="px-3 py-1 bg-green-100 text-green-800 text-sm font-medium rounded-full"
                >
                  程式設計
                </span>
                <span
                  class="px-3 py-1 bg-green-100 text-green-800 text-sm font-medium rounded-full"
                >
                  資料結構
                </span>
                <span
                  class="px-3 py-1 bg-green-100 text-green-800 text-sm font-medium rounded-full"
                >
                  軟體工程
                </span>
                <span
                  class="px-3 py-1 bg-green-100 text-green-800 text-sm font-medium rounded-full"
                >
                  網頁設計
                </span>
              </div>
            </div>
            <div class="mt-6 md:mt-0 md:ml-8">
              <div class="text-center p-4 bg-green-50 rounded-lg">
                <i class="fas fa-certificate text-green-500 text-3xl mb-2"></i>
                <p class="text-sm font-semibold text-green-700">學士學位</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 技能進展總覽 -->
      <div class="mt-20">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-4">技能發展歷程</h2>
          <div class="w-24 h-1 bg-primary-500 mx-auto rounded"></div>
          <p class="text-gray-600 mt-4">隨著工作經驗累積而不斷精進的技術技能</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
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
