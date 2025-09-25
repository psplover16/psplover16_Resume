<template>
  <div class="py-20">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- 頁面標題 -->
      <div class="text-center mb-16">
        <h1 class="section-title">聯絡我</h1>
        <p class="text-xl text-gray-600">
          歡迎與我聯繫，討論合作機會或技術交流
        </p>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
        <!-- 聯絡資訊 -->
        <div>
          <h2 class="text-2xl font-bold mb-8 text-gray-800">聯絡資訊</h2>

          <div class="space-y-6">
            <!-- Email -->
            <div class="flex items-start space-x-4">
              <div
                class="flex-shrink-0 w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center"
              >
                <svg
                  class="w-6 h-6 text-blue-600"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                >
                  <path
                    d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"
                  ></path>
                  <path
                    d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"
                  ></path>
                </svg>
              </div>
              <div>
                <h3 class="font-semibold text-gray-800">Email</h3>
                <a
                  :href="`mailto:${personalInfo.email}`"
                  class="text-blue-600 hover:text-blue-700 transition-colors"
                >
                  {{ personalInfo.email }}
                </a>
                <p class="text-sm text-gray-600 mt-1">
                  隨時歡迎寄信討論合作機會
                </p>
              </div>
            </div>

            <!-- Location -->
            <div class="flex items-start space-x-4">
              <div
                class="flex-shrink-0 w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center"
              >
                <svg
                  class="w-6 h-6 text-green-600"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                >
                  <path
                    fill-rule="evenodd"
                    d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
              </div>
              <div>
                <h3 class="font-semibold text-gray-800">位置</h3>
                <p class="text-gray-700">{{ personalInfo.location }}</p>
                <p class="text-sm text-gray-600 mt-1">可配合遠端工作或面談</p>
              </div>
            </div>

            <!-- GitHub -->
            <div class="flex items-start space-x-4">
              <div
                class="flex-shrink-0 w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center"
              >
                <svg
                  class="w-6 h-6 text-gray-600"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"
                  />
                </svg>
              </div>
              <div>
                <h3 class="font-semibold text-gray-800">GitHub</h3>
                <a
                  :href="personalInfo.github"
                  target="_blank"
                  rel="noopener noreferrer"
                  class="text-blue-600 hover:text-blue-700 transition-colors"
                >
                  psplover16
                </a>
                <p class="text-sm text-gray-600 mt-1">查看我的開源專案與代碼</p>
              </div>
            </div>

            <!-- Line -->
            <div class="flex items-start space-x-4">
              <div
                class="flex-shrink-0 w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center"
              >
                <svg
                  class="w-6 h-6 text-green-600"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M12 0C5.373 0 0 4.975 0 11.111c0 3.497 1.745 6.616 4.472 8.652.4.299.472.772.472.772s-.134.492-.2.784c-.095.421-.438 1.643 1.443.898 1.88-.745 10.17-5.982 13.888-10.24C21.607 10.108 24 8.575 24 11.111 24 4.975 18.627 0 12 0zm-3.5 7.5h-2c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2c.276 0 .5.224.5.5s-.224.5-.5.5zm0 2h-2c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2c.276 0 .5.224.5.5s-.224.5-.5.5zm3 0h-2c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2c.276 0 .5.224.5.5s-.224.5-.5.5zm3 0h-2c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2c.276 0 .5.224.5.5s-.224.5-.5.5z"
                  />
                </svg>
              </div>
              <div>
                <h3 class="font-semibold text-gray-800">Line</h3>
                <a
                  :href="personalInfo.line"
                  target="_blank"
                  rel="noopener noreferrer"
                  class="text-blue-600 hover:text-blue-700 transition-colors"
                >
                  即時通訊聯絡
                </a>
                <p class="text-sm text-gray-600 mt-1">快速即時溝通</p>
              </div>
            </div>
          </div>

          <!-- 社群連結 -->
          <div class="mt-12">
            <h3 class="text-lg font-semibold mb-4 text-gray-800">社群媒體</h3>
            <div class="flex space-x-4">
              <a
                :href="personalInfo.github"
                target="_blank"
                rel="noopener noreferrer"
                class="w-12 h-12 bg-gray-800 text-white rounded-lg flex items-center justify-center hover:bg-gray-700 transition-colors"
              >
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
                class="w-12 h-12 bg-green-500 text-white rounded-lg flex items-center justify-center hover:bg-green-600 transition-colors"
              >
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path
                    d="M12 0C5.373 0 0 4.975 0 11.111c0 3.497 1.745 6.616 4.472 8.652.4.299.472.772.472.772s-.134.492-.2.784c-.095.421-.438 1.643 1.443.898 1.88-.745 10.17-5.982 13.888-10.24C21.607 10.108 24 8.575 24 11.111 24 4.975 18.627 0 12 0z"
                  />
                </svg>
              </a>
            </div>
          </div>
        </div>

        <!-- 聯絡表單 -->
        <div>
          <h2 class="text-2xl font-bold mb-8 text-gray-800">發送訊息</h2>

          <form @submit.prevent="handleSubmit" class="space-y-6">
            <!-- 姓名 -->
            <div>
              <label
                for="name"
                class="block text-sm font-medium text-gray-700 mb-2"
              >
                姓名 *
              </label>
              <input
                v-model="form.name"
                type="text"
                id="name"
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors"
                placeholder="請輸入您的姓名"
              />
            </div>

            <!-- Email -->
            <div>
              <label
                for="email"
                class="block text-sm font-medium text-gray-700 mb-2"
              >
                Email *
              </label>
              <input
                v-model="form.email"
                type="email"
                id="email"
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors"
                placeholder="請輸入您的 Email"
              />
            </div>

            <!-- 主題 -->
            <div>
              <label
                for="subject"
                class="block text-sm font-medium text-gray-700 mb-2"
              >
                主題 *
              </label>
              <input
                v-model="form.subject"
                type="text"
                id="subject"
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors"
                placeholder="請輸入訊息主題"
              />
            </div>

            <!-- 訊息內容 -->
            <div>
              <label
                for="message"
                class="block text-sm font-medium text-gray-700 mb-2"
              >
                訊息內容 *
              </label>
              <textarea
                v-model="form.message"
                id="message"
                rows="5"
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-colors resize-none"
                placeholder="請輸入您想說的話..."
              ></textarea>
            </div>

            <!-- 送出按鈕 -->
            <button
              type="submit"
              :disabled="isSubmitting"
              class="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed"
            >
              <span
                v-if="isSubmitting"
                class="flex items-center justify-center"
              >
                <svg
                  class="animate-spin -ml-1 mr-3 h-5 w-5 text-white"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <circle
                    class="opacity-25"
                    cx="12"
                    cy="12"
                    r="10"
                    stroke="currentColor"
                    stroke-width="4"
                  ></circle>
                  <path
                    class="opacity-75"
                    fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                  ></path>
                </svg>
                送出中...
              </span>
              <span v-else>發送訊息 (無串接API)</span>
            </button>
          </form>

          <!-- 表單說明 -->
          <div class="mt-6 p-4 bg-blue-50 rounded-lg">
            <div class="flex items-start">
              <svg
                class="w-5 h-5 text-blue-500 mt-0.5 mr-3"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                  clip-rule="evenodd"
                ></path>
              </svg>
              <div>
                <h4 class="text-sm font-medium text-blue-800">溫馨提醒</h4>
                <p class="text-sm text-blue-700 mt-1">
                  此表單會將訊息轉換為 Email
                  格式發送。如需即時回應，建議直接使用 Email 或 Line 聯絡。
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { ref, reactive, computed } from 'vue';
  import { usePersonalStore } from '@/stores/personalStore';

  const personalStore = usePersonalStore();
  const personalInfo = computed(() => personalStore.personalInfo);

  const isSubmitting = ref(false);

  // 表單資料
  const form = reactive({
    name: '',
    email: '',
    subject: '',
    message: '',
  });

  // 處理表單送出
  const handleSubmit = () => {
    try {
      isSubmitting.value = true;

      // 建立 mailto 連結
      const mailtoUrl = createMailtoUrl();

      // 開啟郵件客戶端
      window.location.href = mailtoUrl;

      // 重置表單
      resetForm();

      // 顯示成功訊息
      alert('已開啟您的郵件程式，請檢查並發送郵件。');
    } catch (error) {
      // 發送訊息時發生錯誤
      alert('發送失敗，請直接使用 Email 聯絡。');
    } finally {
      isSubmitting.value = false;
    }
  };

  // 建立 mailto URL
  const createMailtoUrl = () => {
    const to = personalInfo.value.email;
    const subject = encodeURIComponent(`[履歷網站聯絡] ${form.subject}`);
    const body = encodeURIComponent(
      `姓名: ${form.name}\n` +
        `Email: ${form.email}\n` +
        `主題: ${form.subject}\n\n` +
        `訊息內容:\n${form.message}\n\n` +
        '--\n此訊息來自個人履歷網站的聯絡表單'
    );

    return `mailto:${to}?subject=${subject}&body=${body}`;
  };

  // 重置表單
  const resetForm = () => {
    form.name = '';
    form.email = '';
    form.subject = '';
    form.message = '';
  };
</script>
