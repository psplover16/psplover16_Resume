<template>
  <div
    class="relative flex flex-col items-start mb-8 sm:mb-12 w-full"
    :class="{
      'lg:flex-row lg:items-center': !isReversed,
      'lg:flex-row-reverse lg:items-center': isReversed,
    }"
  >
    <!-- 時間軸圓點 - 針對不同螢幕尺寸調整 -->
    <div
      class="absolute left-3 sm:left-5 lg:left-1/2 w-2 h-2 sm:w-3 sm:h-3 bg-primary-500 border-2 sm:border-4 border-white rounded-full transform lg:-translate-x-1.5 shadow-lg z-10 mt-2"
    ></div>

    <!-- 經歷內容卡片 - 響應式佈局 -->
    <div
      class="ml-0 w-full transform transition-all duration-300 hover:scale-[1.02] lg:hover:scale-105"
      :class="{
        'lg:w-1/2 lg:pr-4 xl:pr-8': !isReversed,
        'lg:w-1/2 lg:pl-4 xl:pl-8': isReversed,
      }"
    >
      <div
        class="bg-white rounded-lg sm:rounded-xl shadow-md hover:shadow-lg sm:hover:shadow-xl transition-shadow duration-300 p-3 sm:p-4 md:p-6 lg:p-8 border-l-4 border-primary-500 w-full overflow-hidden"
      >
        <!-- 時間區間 - 響應式字體與間距 -->
        <div class="flex items-center mb-3 sm:mb-4">
          <i
            class="fas fa-calendar-alt text-primary-500 mr-2 sm:mr-3 text-sm sm:text-base"
          ></i>
          <span
            class="text-xs sm:text-sm font-semibold text-primary-600 bg-primary-50 px-2 sm:px-3 py-1 rounded-full"
          >
            {{ experience.period }}
          </span>
        </div>

        <!-- 職位標題 - 響應式字體大小 -->
        <h3
          class="text-base sm:text-lg md:text-xl lg:text-2xl font-bold text-gray-900 mb-2 break-words"
        >
          {{ experience.position }}
        </h3>

        <!-- 公司名稱 - 響應式字體與間距 -->
        <div class="flex items-center mb-3 sm:mb-4">
          <i
            class="fas fa-building text-gray-500 mr-2 sm:mr-3 text-sm sm:text-base flex-shrink-0"
          ></i>
          <h4
            class="text-sm sm:text-base md:text-lg font-semibold text-gray-700 break-words"
          >
            {{ experience.company }}
          </h4>
        </div>

        <!-- 工作描述 - 響應式字體與行高 -->
        <p
          class="text-sm sm:text-base text-gray-600 mb-4 sm:mb-6 leading-relaxed break-words"
        >
          {{ experience.description }}
        </p>

        <!-- 主要成就 - 響應式佈局 -->
        <div class="mb-4 sm:mb-6">
          <h5
            class="flex items-center text-base sm:text-lg font-semibold text-gray-800 mb-2 sm:mb-3"
          >
            <i
              class="fas fa-trophy text-yellow-500 mr-2 sm:mr-3 text-sm sm:text-base"
            ></i>
            <span class="text-sm sm:text-base">主要成就</span>
          </h5>
          <ul class="space-y-1 sm:space-y-2">
            <li
              v-for="achievement in experience.achievements"
              :key="achievement"
              class="flex items-start"
            >
              <i
                class="fas fa-check-circle text-green-500 mr-2 sm:mr-3 mt-0.5 sm:mt-1 flex-shrink-0 text-xs sm:text-sm"
              ></i>
              <span class="text-sm sm:text-base text-gray-600 break-words">{{
                achievement
              }}</span>
            </li>
          </ul>
        </div>

        <!-- 技術技能 - 響應式標籤佈局 -->
        <div>
          <h5
            class="flex items-center text-base sm:text-lg font-semibold text-gray-800 mb-2 sm:mb-3"
          >
            <i
              class="fas fa-tools text-blue-500 mr-2 sm:mr-3 text-sm sm:text-base"
            ></i>
            <span class="text-sm sm:text-base">使用技術</span>
          </h5>
          <div class="flex flex-wrap gap-1 sm:gap-2 -mx-1 sm:mx-0">
            <span
              v-for="skill in experience.skills"
              :key="skill"
              class="px-2 sm:px-3 py-1 mx-1 sm:mx-0 bg-blue-100 text-blue-800 text-xs sm:text-sm font-medium rounded-full hover:bg-blue-200 transition-colors break-words"
              style="word-break: break-word"
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
