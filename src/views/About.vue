<template>
  <div class="py-20">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- 頁面標題 -->
      <div class="text-center mb-16">
        <h1 class="section-title font-heading">關於我</h1>
        <p class="text-xl text-gray-600 font-sans">了解我的背景與經歷</p>
      </div>

      <!-- 個人簡介 -->
      <section class="mb-16">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div class="order-2 lg:order-1">
            <h2 class="text-2xl font-heading font-bold mb-6">個人簡介</h2>
            <div class="space-y-4 text-gray-700 leading-relaxed font-sans">
              <p>
                我是一名熱愛程式開發與遊戲創作的全端開發者，具備豐富的網頁開發經驗，
                同時也專精於遊戲開發領域。我喜歡挑戰新技術，並將創意想法轉化為實際的產品。
              </p>
              <p>
                在學習過程中，我深入研究了前端技術如
                Vue.js、JavaScript、HTML5/CSS3， 以及後端技術如 PHP、Node.js
                和資料庫管理。同時，我也投入大量時間學習 Unity
                遊戲開發，創作了多款有趣的遊戲作品。
              </p>
              <p>
                我相信持續學習是程式開發者最重要的特質，因此我總是保持對新技術的好奇心，
                並積極參與各種開發專案來提升自己的能力。
              </p>
            </div>
          </div>
          <div class="order-1 lg:order-2">
            <div class="relative">
              <img
                :src="personalInfo.avatar"
                :alt="personalInfo.name"
                class="w-full max-w-sm mx-auto rounded-2xl shadow-2xl"
                @error="handleImageError"
              />
              <div
                class="absolute -bottom-6 -right-6 w-24 h-24 bg-primary-100 rounded-2xl -z-10"
              ></div>
              <div
                class="absolute -top-6 -left-6 w-32 h-32 bg-yellow-100 rounded-2xl -z-10"
              ></div>
            </div>
          </div>
        </div>
      </section>

      <!-- 教育背景 -->
      <EducationSection />

      <!-- 專業經歷 -->
      <ExperienceSection />

      <!-- 興趣與愛好 -->
      <section class="mb-16">
        <h2 class="text-2xl font-bold mb-8 text-center">興趣與愛好</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div
            class="text-center p-6 bg-gradient-to-br from-blue-50 to-blue-100 rounded-lg"
          >
            <div
              class="w-16 h-16 bg-blue-500 rounded-full flex items-center justify-center mx-auto mb-4"
            >
              <svg
                class="w-8 h-8 text-white"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M12.316 3.051a1 1 0 01.633 1.265l-4 12a1 1 0 11-1.898-.632l4-12a1 1 0 011.265-.633zM5.707 6.293a1 1 0 010 1.414L3.414 10l2.293 2.293a1 1 0 11-1.414 1.414l-3-3a1 1 0 010-1.414l3-3a1 1 0 011.414 0zm8.586 0a1 1 0 011.414 0l3 3a1 1 0 010 1.414l-3 3a1 1 0 11-1.414-1.414L16.586 10l-2.293-2.293a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </div>
            <h3 class="font-bold text-lg mb-2">程式開發</h3>
            <p class="text-gray-600 text-sm">
              熱愛學習新技術，享受解決複雜問題的過程
            </p>
          </div>

          <div
            class="text-center p-6 bg-gradient-to-br from-green-50 to-green-100 rounded-lg"
          >
            <div
              class="w-16 h-16 bg-green-500 rounded-full flex items-center justify-center mx-auto mb-4"
            >
              <svg
                class="w-8 h-8 text-white"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </div>
            <h3 class="font-bold text-lg mb-2">遊戲設計</h3>
            <p class="text-gray-600 text-sm">
              喜歡創作有趣的遊戲機制與互動體驗
            </p>
          </div>

          <div
            class="text-center p-6 bg-gradient-to-br from-purple-50 to-purple-100 rounded-lg"
          >
            <div
              class="w-16 h-16 bg-purple-500 rounded-full flex items-center justify-center mx-auto mb-4"
            >
              <svg
                class="w-8 h-8 text-white"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4zm12 12H4l4-8 3 6 2-4 3 6z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </div>
            <h3 class="font-bold text-lg mb-2">視覺效果</h3>
            <p class="text-gray-600 text-sm">
              研究 Canvas 動畫與特效，創造視覺驚豔的效果
            </p>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup>
  import { computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';
  import ExperienceSection from '@/components/ExperienceSection.vue';
  import EducationSection from '@/components/EducationSection.vue';

  const personalStore = usePersonalStore();
  const personalInfo = computed(() => personalStore.personalInfo);

  // 圖片錯誤處理
  const handleImageError = event => {
    const img = event.target;
    img.src =
      'https://via.placeholder.com/400x300/e2e8f0/64748b?text=Image+Not+Found';
  };
</script>
