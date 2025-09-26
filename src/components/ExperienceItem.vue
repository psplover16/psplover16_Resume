<template>
  <div
    class="relative flex flex-col md:flex-row items-start"
    :class="{ 'md:flex-row-reverse': isReversed }"
  >
    <!-- 時間軸圓點 -->
    <div
      class="absolute left-6 md:left-1/2 w-3 h-3 bg-primary-500 border-4 border-white rounded-full transform md:-translate-x-1.5 shadow-lg z-10"
    ></div>

    <!-- 經歷內容卡片 -->
    <div
      class="ml-16 md:ml-0 w-full md:w-1/2 transform transition-all duration-500 hover:scale-105"
      :class="{
        'md:pr-16': !isReversed,
        'md:pl-16': isReversed,
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
</template>

<script setup>
  // 定義 props
  const props = defineProps({
    experience: {
      type: Object,
      required: true,
    },
    isReversed: {
      type: Boolean,
      default: false,
    },
  });
</script>
