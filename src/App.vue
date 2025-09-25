<template>
  <div id="app" class="min-h-screen bg-gray-50">
    <!-- 導航欄 -->
    <NavBar />

    <!-- 主要內容區域 -->
    <main class="pt-16">
      <router-view v-slot="{ Component, route }">
        <transition name="page" mode="out-in" appear>
          <component :is="Component" :key="route.path" />
        </transition>
      </router-view>
    </main>

    <!-- 頁腳 -->
    <AppFooter />
  </div>
</template>

<script setup>
  import NavBar from '@/components/layout/NavBar.vue';
  import AppFooter from '@/components/layout/AppFooter.vue';
</script>

<style scoped>
  .page-enter-active,
  .page-leave-active {
    transition: all 0.3s ease-in-out;
  }

  .page-enter-from {
    opacity: 0;
    transform: translateY(20px);
  }

  .page-leave-to {
    opacity: 0;
    transform: translateY(-20px);
  }
</style>
