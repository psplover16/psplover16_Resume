<template>
  <section class="mb-16">
    <h2 class="text-2xl font-bold mb-8 text-center font-heading">教育背景</h2>
    <div class="card mx-auto max-w-2xl">
      <div class="flex items-start space-x-6">
        <div class="flex-shrink-0">
          <div
            class="w-16 h-16 bg-white rounded-full flex items-center justify-center border-2 border-blue-200 shadow-sm"
          >
            <img
              :src="education.logo"
              :alt="`${education.school}校徽`"
              class="w-12 h-12 object-contain"
              @error="handleLogoError"
            />
          </div>
        </div>
        <div class="flex-1">
          <div
            class="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-2"
          >
            <h3 class="text-xl font-semibold font-heading">
              {{ education.school }}
            </h3>
            <span class="text-sm text-primary-600 font-medium">{{
              education.period
            }}</span>
          </div>
          <p class="text-primary-600 font-medium mb-3">
            {{ education.degree }}
          </p>
          <div class="space-y-5 text-gray-600 font-sans">
            <p class="leading-relaxed">
              {{ education.description }}
            </p>
            <div>
              <h4 class="font-semibold mb-2 text-gray-800">
                {{ education.fieldsTitle }}
              </h4>
              <div class="grid grid-cols-1 sm:grid-cols-2 gap-2 text-sm">
                <div
                  v-for="field in education.fields"
                  :key="field"
                  class="flex items-center space-x-2"
                >
                  <div class="w-2 h-2 bg-primary-500 rounded-full"></div>
                  <span>{{ field }}</span>
                </div>
              </div>
            </div>
            <div v-if="education.achievement" class="p-3 bg-blue-50 rounded-lg">
              <p class="text-sm text-blue-800">
                <strong>{{ education.achievementTitle }}</strong
                >{{ education.achievement }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
  import { ref } from 'vue';
  import mcuLogo from '@/assets/img/icons/mingchun.png';

  // 教育背景數據
  const education = ref({
    school: '銘傳大學',
    period: '2012 - 2017',
    degree: '企業管理學系 及 法律學系 雙主修 學士學位',
    logo: mcuLogo,
    description:
      '在學期間主修企業管理，培養了商業思維與管理能力，同時輔修法律系，深入學習刑法、民法等相關法律知識，並建立了「刑事筆記」網站分享學習心得。',
    fieldsTitle: '主要學習領域：',
    fields: [
      '企業管理與組織行為',
      '刑法與刑事訴訟法',
      '行銷管理與策略規劃',
      '法律邏輯與分析思維',
    ],
    achievementTitle: '特殊成就：',
    achievement:
      '結合法律專業知識，開發「刑事筆記」學習平台，運用程式技術分享法律學習心得，展現跨領域整合能力。',
  });

  // 校徽載入錯誤處理
  const handleLogoError = event => {
    const img = event.target;
    // 備用校徽 SVG 或使用通用教育圖標
    img.src =
      'data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="%230ea5e9"><path d="M10.394 2.08a1 1 0 00-.788 0l-7 3a1 1 0 000 1.84L5.25 8.051a.999.999 0 01.356-.257l4-1.714a1 1 0 11.788 1.838L7.667 9.088l1.94.831a1 1 0 00.787 0l7-3a1 1 0 000-1.838l-7-3zM3.31 9.397L5 10.12v4.102a8.969 8.969 0 00-1.05-.174 1 1 0 01-.89-.89 11.115 11.115 0 01.25-3.762zM9.3 16.573A9.026 9.026 0 007 14.935v-3.957l1.818.78a3 3 0 002.364 0l5.508-2.361a11.026 11.026 0 01.25 3.762 1 1 0 01-.89.89 8.968 8.968 0 00-5.35 2.524 1 1 0 01-1.4 0zM6 18a1 1 0 001-1v-2.065a8.935 8.935 0 00-2-.712V17a1 1 0 001 1z"/></svg>';
  };
</script>
