<template>
  <nav class="fixed top-0 left-0 right-0 bg-white shadow-lg z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between items-center h-16">
        <!-- Logo -->
        <div class="flex-shrink-0">
          <router-link
            to="/"
            class="text-2xl font-heading font-bold text-primary-600 hover:text-primary-700 transition-colors"
          >
            Lin
          </router-link>
        </div>

        <!-- Desktop Navigation -->
        <div class="hidden md:block">
          <div class="ml-10 flex items-baseline space-x-4">
            <router-link
              v-for="item in navigationItems"
              :key="item.name"
              :to="item.to"
              class="nav-link"
              active-class="nav-link-active"
            >
              {{ item.name }}
            </router-link>
          </div>
        </div>

        <!-- Mobile menu button -->
        <div class="md:hidden">
          <button
            @click="toggleMobileMenu"
            type="button"
            class="text-gray-500 hover:text-gray-600 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-primary-500 p-2 rounded-md"
          >
            <span class="sr-only">開啟主選單</span>
            <svg
              class="h-6 w-6"
              :class="{ hidden: isMobileMenuOpen, block: !isMobileMenuOpen }"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16"
              />
            </svg>
            <svg
              class="h-6 w-6"
              :class="{ block: isMobileMenuOpen, hidden: !isMobileMenuOpen }"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M6 18L18 6M6 6l12 12"
              />
            </svg>
          </button>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div
      class="md:hidden"
      :class="{ block: isMobileMenuOpen, hidden: !isMobileMenuOpen }"
    >
      <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-white border-t">
        <router-link
          v-for="item in navigationItems"
          :key="item.name"
          :to="item.to"
          class="mobile-nav-link"
          active-class="mobile-nav-link-active"
          @click="closeMobileMenu"
        >
          {{ item.name }}
        </router-link>
      </div>
    </div>
  </nav>
</template>

<script setup>
  import { ref } from 'vue';

  const isMobileMenuOpen = ref(false);

  const navigationItems = [
    { name: '首頁', to: '/' },
    { name: '關於我', to: '/about' },
    { name: '工作經歷', to: '/experience' },
    { name: '作品集', to: '/portfolio' },
    { name: '技能', to: '/skills' },
    // { name: '聯絡我', to: '/contact' },
  ];

  const toggleMobileMenu = () => {
    isMobileMenuOpen.value = !isMobileMenuOpen.value;
  };

  const closeMobileMenu = () => {
    isMobileMenuOpen.value = false;
  };
</script>

<style scoped>
  .nav-link {
    color: #374151;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    font-size: 0.875rem;
    font-weight: 500;
    transition: color 0.2s ease-in-out;
  }

  .nav-link:hover {
    color: #2563eb;
  }

  .nav-link-active {
    color: #2563eb;
    background-color: #eff6ff;
  }

  .mobile-nav-link {
    display: block;
    color: #374151;
    padding: 0.5rem 0.75rem;
    border-radius: 0.375rem;
    font-size: 1rem;
    font-weight: 500;
    transition:
      color 0.2s ease-in-out,
      background-color 0.2s ease-in-out;
  }

  .mobile-nav-link:hover {
    color: #2563eb;
    background-color: #f9fafb;
  }

  .mobile-nav-link-active {
    color: #2563eb;
    background-color: #eff6ff;
  }
</style>
