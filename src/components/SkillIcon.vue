// 技能圖標組件 - 使用下載的 SVG 圖標
<template>
  <div class="skill-icon-wrapper">
    <!-- 如果有 SVG 圖標檔案，優先使用 -->
    <img
      v-if="iconSrc && !useTextIcon"
      :src="iconSrc"
      :alt="skillName"
      :class="['skill-icon-image', sizeClasses]"
      @error="handleIconError"
    />
    <!-- 備用文字圖標 -->
    <span v-else :class="['skill-icon-text', sizeClasses]" :title="skillName">
      {{ textIcon }}
    </span>
  </div>
</template>

<script setup>
  import { computed, ref } from 'vue';

  const props = defineProps({
    skillName: {
      type: String,
      required: true,
    },
    size: {
      type: String,
      default: 'medium', // small, medium, large
    },
  });

  const useTextIcon = ref(false);

  // 技能名稱到下載圖標檔案的映射
  const iconMapping = {
    // 前端框架
    'Vue.js': 'vue',
    React: 'react',

    // 程式語言
    JavaScript: 'javascript',
    TypeScript: 'typescript',
    Python: 'python',
    PHP: 'php',
    Java: 'java',
    'C#': 'csharp',
    'C++': 'cpp',

    // 標記語言和樣式
    HTML5: 'html5',
    CSS3: 'css3',
    Sass: 'sass',

    // CSS 框架
    'Tailwind CSS': 'tailwindcss',
    Bootstrap: 'bootstrap',

    // 後端技術
    'Node.js': 'nodejs',
    Express: 'express',
    Laravel: 'laravel',

    // 資料庫
    MySQL: 'mysql',
    PostgreSQL: 'postgresql',
    MongoDB: 'mongodb',

    // 開發工具
    Git: 'git',
    GitHub: 'github',
    Docker: 'docker',
    Vite: 'vite',
    Unity: 'unity',
    Cocos: 'cocos',
    // 雲端服務
    Firebase: 'firebase',
    AWS: 'aws',
  };

  // 改良的文字圖標映射
  const textIconMapping = {
    'Vue.js': 'Vue',
    React: 'React',
    JavaScript: 'JS',
    TypeScript: 'TS',
    Python: 'Py',
    PHP: 'PHP',
    Java: 'Java',
    'C#': 'C#',
    'C++': 'C++',
    HTML5: 'H5',
    CSS3: 'CSS',
    Sass: 'Sass',
    'Tailwind CSS': 'TW',
    Bootstrap: 'BS',
    'Node.js': 'Node',
    Express: 'Exp',
    Laravel: 'LV',
    MySQL: 'SQL',
    PostgreSQL: 'PG',
    MongoDB: 'Mongo',
    Git: 'Git',
    GitHub: 'GH',
    Docker: 'Docker',
    Vite: 'Vite',
    Firebase: 'FB',
    AWS: 'AWS',
  };

  // 計算圖標來源路徑
  const iconSrc = computed(() => {
    const iconFile = iconMapping[props.skillName];
    if (iconFile) {
      try {
        // 使用我們下載的圖標
        return new URL(`../assets/img/icons/${iconFile}.svg`, import.meta.url)
          .href;
      } catch (error) {
        console.warn(`圖標載入失敗: ${props.skillName}`, error);
        return null;
      }
    }
    return null;
  });

  // 文字圖標備用方案
  const textIcon = computed(() => {
    return (
      textIconMapping[props.skillName] ||
      props.skillName.charAt(0).toUpperCase() +
        (props.skillName
          .split(/[\s.]+/)[1]
          ?.charAt(0)
          ?.toUpperCase() || '')
    );
  });

  // 處理圖標載入錯誤
  const handleIconError = event => {
    console.warn(`圖標載入失敗: ${props.skillName}`, event);
    useTextIcon.value = true;
  };

  // 動態尺寸類別
  const sizeClasses = computed(() => {
    const sizes = {
      small: 'w-6 h-6',
      medium: 'w-8 h-8',
      large: 'w-12 h-12',
    };
    return sizes[props.size] || sizes.medium;
  });
</script>

<style scoped>
  .skill-icon-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .skill-icon-image {
    object-fit: contain;
    transition: transform 0.2s ease-in-out;
  }

  .skill-icon-image:hover {
    transform: scale(1.1);
  }

  .skill-icon-text {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    background-color: #f3f4f6;
    color: #374151;
    font-weight: 600;
    border-radius: 0.375rem;
    font-size: 0.75rem;
    line-height: 1;
    transition: all 0.2s ease-in-out;
    cursor: default;
  }

  .skill-icon-text:hover {
    background-color: #e5e7eb;
    transform: scale(1.05);
  }

  /* 動態尺寸 */
  .skill-icon-image.w-6,
  .skill-icon-text.w-6 {
    width: 1.5rem;
    height: 1.5rem;
  }

  .skill-icon-image.w-8,
  .skill-icon-text.w-8 {
    width: 2rem;
    height: 2rem;
  }

  .skill-icon-image.w-12,
  .skill-icon-text.w-12 {
    width: 3rem;
    height: 3rem;
    font-size: 0.875rem;
  }
</style>
