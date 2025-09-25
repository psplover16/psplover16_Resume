<template>
  <footer class="bg-gray-800 text-white py-8">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- 個人資訊 -->
        <div>
          <h3 class="text-lg font-semibold mb-4">聯絡資訊</h3>
          <div class="space-y-2">
            <p class="flex items-center">
              <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                <path
                  d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"
                ></path>
                <path
                  d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"
                ></path>
              </svg>
              {{ personalInfo.email }}
            </p>
            <p class="flex items-center">
              <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                <path
                  fill-rule="evenodd"
                  d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z"
                  clip-rule="evenodd"
                ></path>
              </svg>
              {{ personalInfo.location }}
            </p>
          </div>
        </div>

        <!-- 快速連結 -->
        <div>
          <h3 class="text-lg font-semibold mb-4">快速連結</h3>
          <nav class="space-y-2">
            <router-link
              v-for="item in navigationItems"
              :key="item.name"
              :to="item.to"
              class="block text-gray-300 hover:text-white transition-colors duration-200"
            >
              {{ item.name }}
            </router-link>
          </nav>
        </div>

        <!-- 社群連結 -->
        <div>
          <h3 class="text-lg font-semibold mb-4">社群媒體</h3>
          <div class="flex space-x-4">
            <a
              :href="personalInfo.github"
              target="_blank"
              rel="noopener noreferrer"
              class="text-gray-300 hover:text-white transition-colors duration-200"
            >
              <span class="sr-only">GitHub</span>
              <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                <path
                  d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"
                />
              </svg>
            </a>
            <a
              :href="personalInfo.line"
              target="_blank"
              rel="noopener noreferrer"
              class="text-gray-300 hover:text-white transition-colors duration-200"
            >
              <span class="sr-only">Line</span>
              <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                <path
                  d="M12 2C6.477 2 2 6.477 2 12c0 5.523 4.477 10 10 10s10-4.477 10-10S17.523 2 12 2zm-1.5 15h-3v-6h3v6zm-1.5-7.5c-.828 0-1.5-.672-1.5-1.5S8.672 7.5 9.5 7.5s1.5.672 1.5 1.5-.672 1.5-1.5 1.5zm6 7.5h-3v-3.5c0-.828-.672-1.5-1.5-1.5s-1.5.672-1.5 1.5V17h-3v-6h3v1c.5-.5 1.5-1 2.5-1 2.485 0 3.5 2.015 3.5 3.5V17z"
                />
              </svg>
            </a>
          </div>
        </div>
      </div>

      <!-- 版權資訊 -->
      <div class="mt-8 pt-8 border-t border-gray-700 text-center">
        <p class="text-gray-400">
          © {{ currentYear }} {{ personalInfo.name }}. 版權所有.
        </p>
        <p class="text-gray-400 mt-2 text-sm">
          使用 Vue 3 + Vite + TypeScript + TailwindCSS 建置
        </p>
      </div>
    </div>
  </footer>
</template>

<script setup>
  import { computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';

  const personalStore = usePersonalStore();
  const personalInfo = computed(() => personalStore.personalInfo);

  const currentYear = new Date().getFullYear();

  const navigationItems = [
    { name: '首頁', to: '/' },
    { name: '關於我', to: '/about' },
    { name: '作品集', to: '/portfolio' },
    { name: '技能', to: '/skills' },
    // { name: '聯絡我', to: '/contact' },
  ];
</script>
