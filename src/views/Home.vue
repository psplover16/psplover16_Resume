<template>
  <div class="min-h-screen">
    <!-- 英雄區塊 -->
    <section
      class="relative bg-gradient-to-r from-blue-600 to-purple-600 text-white py-20"
    >
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <!-- 左側內容 -->
          <div class="animate-fade-in">
            <h1
              class="text-4xl sm:text-5xl lg:text-6xl font-heading font-bold mb-6 tracking-tight"
            >
              你好，我是
              <span class="text-yellow-300">{{ personalInfo.name }}</span>
            </h1>
            <p class="text-xl sm:text-2xl mb-8 text-blue-100 font-medium">
              {{ personalInfo.title }}
            </p>
            <p class="text-lg mb-8 text-blue-100 leading-relaxed font-sans">
              {{ personalInfo.description }}
            </p>
            <div class="flex flex-col sm:flex-row gap-4">
              <router-link to="/portfolio" class="btn-primary text-center">
                查看作品集
              </router-link>
              <router-link
                to="/contact"
                class="bg-transparent border-2 border-white text-white hover:bg-white hover:text-blue-600 px-6 py-3 rounded-lg font-medium transition-colors duration-200 text-center"
              >
                聯絡我
              </router-link>
            </div>
          </div>

          <!-- 右側頭像 -->
          <div class="flex justify-center lg:justify-end animate-slide-up">
            <div class="relative">
              <div
                class="w-80 h-80 rounded-full overflow-hidden border-8 border-white shadow-2xl"
              >
                <img
                  :src="personalInfo.avatar"
                  :alt="personalInfo.name"
                  class="w-full h-full object-cover"
                  @error="handleImageError"
                />
              </div>
              <!-- 裝飾圓圈 -->
              <div
                class="absolute -top-4 -right-4 w-24 h-24 bg-yellow-300 rounded-full opacity-20"
              ></div>
              <div
                class="absolute -bottom-4 -left-4 w-16 h-16 bg-pink-300 rounded-full opacity-30"
              ></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 精選作品 -->
    <section class="py-20 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
          <h2 class="section-title font-heading">精選作品</h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto font-sans">
            以下是我最自豪的一些作品，展現了我在不同技術領域的能力
          </p>
        </div>

        <div class="text-center mt-12">
          <router-link to="/portfolio" class="btn-primary">
            查看所有作品
          </router-link>
        </div>
      </div>
    </section>

    <!-- 技能預覽 -->
    <section class="py-20 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
          <h2 class="section-title font-heading">技能概覽</h2>
          <p class="text-xl text-gray-600 font-sans">我的核心技術能力</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          <div
            v-for="skill in topSkills"
            :key="skill.name"
            class="text-center p-6 bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-200"
          >
            <div
              class="w-16 h-16 bg-primary-100 rounded-full flex items-center justify-center mx-auto mb-4"
            >
              <SkillIcon :skill-name="skill.name" size="large" />
            </div>
            <h3 class="font-heading font-bold text-lg mb-2">
              {{ skill.name }}
            </h3>
            <div class="w-full bg-gray-200 rounded-full h-2">
              <div
                class="bg-primary-500 h-2 rounded-full transition-all duration-1000"
                :style="{ width: `${skill.level}%` }"
              ></div>
            </div>
            <span class="text-sm text-gray-600 mt-2 block"
              >{{ skill.level }}%</span
            >
          </div>
        </div>

        <div class="text-center mt-12">
          <router-link to="/skills" class="btn-secondary">
            查看所有技能
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
  import { computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';
  import SkillIcon from '@/components/SkillIcon.vue';

  const personalStore = usePersonalStore();
  const personalInfo = computed(() => personalStore.personalInfo);

  // 取得指定的核心技能（按指定順序）
  const topSkills = computed(() => personalStore.getFeaturedSkills);

  // 圖片錯誤處理
  const handleImageError = event => {
    const img = event.target;
    img.src = personalStore.personalInfo.avatar;
  };
</script>
