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
