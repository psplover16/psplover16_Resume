import { defineStore } from 'pinia';

export const usePersonalStore = defineStore('personal', {
  state: () => ({
    // 個人基本資訊
    personalInfo: {
      name: 'Jun Xiao',
      title: '前端工程師',
      email: 'a01111775@gmail.com',
      phone: '+886-XXX-XXX-XXX',
      location: '台灣',
      bio: '熱愛前端開發的工程師，專注於現代化網頁應用開發，擁有豐富的 Vue.js 和 JavaScript 經驗。',
      avatar: '/assets/img/profile/avatar.png',
      github: 'https://github.com/psplover16',
      linkedin: '',
      website: 'https://psplover16.github.io/',
      lineId: 'a8i_2Npubl',
    },

    // 工作經歷資料
    workExperience: [
      {
        id: 1,
        position: '前端工程師',
        company: '某科技公司',
        period: '2022.01 - 至今',
        description:
          '負責前端架構設計與開發，使用 Vue.js、React 等現代化框架建構使用者介面。',
        achievements: [
          '建立可重複使用的組件庫',
          '優化網站效能提升 40%',
          '導入 CI/CD 流程',
        ],
        skills: ['Vue.js', 'React', 'TypeScript', 'Webpack'],
      },
      {
        id: 2,
        position: '網頁開發師',
        company: '前一家公司',
        period: '2020.06 - 2021.12',
        description: '專注於網頁前端開發，包含響應式設計與用戶體驗優化。',
        achievements: [
          '完成多個商業網站專案',
          '建立統一的 UI/UX 設計規範',
          '提升網站載入速度 60%',
        ],
        skills: ['JavaScript', 'CSS3', 'Bootstrap', 'jQuery'],
      },
    ],

    // 專案作品
    projects: [
      {
        id: 1,
        title: '一頁式網站',
        category: 'web-development',
        period: '近期作品',
        description: '用兩種不同方式切版，並且針對手機有不同的切版。採用響應式設計，確保在各種設備上都有良好的用戶體驗。',
        technologies: ['HTML', 'CSS', 'JavaScript', 'Tailwind CSS', 'RWD'],
        image: '/assets/img/projects/onepage-website.svg',
        demoUrl: 'https://psplover16.github.io/FubanTest/dist/#/',
        githubUrl: '',
        features: [
          'Tailwind CSS 切版',
          '傳統 CSS 命名方式',
          '手機版特別設計',
          '響應式設計',
        ],
      },
      {
        id: 2,
        title: '宇禾官網',
        category: 'web-development',
        period: '商業專案',
        description: '宇禾形象官網開發專案，提供完整的企業形象展示功能。包含內容管理系統，讓客戶能輕鬆管理網站內容。',
        technologies: ['HTML', 'CSS', 'JavaScript', 'PHP'],
        image: '/assets/img/projects/yuhe-official.svg',
        demoUrl: 'http://220.128.133.15/s1080209/fia/Offical/',
        githubUrl: '',
        features: ['企業形象網站', '內容管理系統', '響應式設計'],
      },
      {
        id: 3,
        title: '刑事筆記',
        category: 'web-development',
        period: '學習專案',
        description: '分享大學時期學習刑法的心得。主要利用MySQL、API串接、php、bootstrap、js、jq建置，且具RWD功能。提供完整的學習筆記管理功能。',
        technologies: ['PHP', 'MySQL', 'Bootstrap', 'JavaScript', 'jQuery'],
        image: '/assets/img/projects/law-notes.svg',
        demoUrl: 'http://220.128.133.15/s1080209/roc/law/',
        githubUrl: '',
        features: [
          'MySQL 資料庫',
          'API 串接',
          'Bootstrap 框架',
          'RWD 響應式設計',
        ],
      },
      {
        id: 4,
        title: '武士地下城',
        category: 'game-development',
        period: '遊戲開發',
        description: '打寶遊戲，具備完整的遊戲系統包含裝備、技能、探索等功能。使用Unity引擎開發，提供沉浸式的遊戲體驗。',
        technologies: ['Unity', 'C#', 'Game Development'],
        image: '/assets/img/projects/samurai-dungeon.svg',
        demoUrl: 'http://220.128.133.15/s1080209/unity/web/dungeon1/',
        githubUrl: '',
        features: [
          '方向鍵移動控制',
          '裝備系統與買賣',
          '技能學習系統',
          '地下城探索',
          '物品打造系統',
        ],
      },
      {
        id: 5,
        title: 'Canvas 特效集合',
        category: 'canvas-effects',
        period: '特效練習',
        description: '各種 Canvas 特效的實作練習，包含粒子效果、水波特效等。展示了HTML5 Canvas的強大功能與創意應用可能性。',
        technologies: ['HTML5 Canvas', 'JavaScript', 'CSS3'],
        image: '/assets/img/projects/canvas-effects.svg',
        demoUrl: 'https://psplover16.github.io/',
        githubUrl: '',
        features: [
          '油脂在水面效果',
          '煙霧炫彩功能',
          '水波特效',
          '噴射粒子效果',
          'clipPath 練習',
        ],
      },
    ],

    // 技能資料
    skills: [
      // 前端技術
      { name: 'Vue.js', level: 90, category: 'frontend' },
      { name: 'JavaScript', level: 85, category: 'frontend' },
      { name: 'TypeScript', level: 75, category: 'frontend' },
      { name: 'HTML5', level: 90, category: 'frontend' },
      { name: 'CSS3', level: 90, category: 'frontend' },
      { name: 'Tailwind CSS', level: 85, category: 'frontend' },
      { name: 'Bootstrap', level: 75, category: 'frontend' },

      // 後端技術
      { name: 'PHP', level: 70, category: 'backend' },
      { name: 'Node.js', level: 60, category: 'backend' },

      // 資料庫
      { name: 'MySQL', level: 75, category: 'database' },

      // 開發工具
      { name: 'Git', level: 80, category: 'tools' },
      { name: 'Vite', level: 85, category: 'tools' },

      // 其他技術
      { name: 'Unity', level: 70, category: 'other' },
      { name: 'C#', level: 65, category: 'other' },
    ],
  }),

  getters: {
    // 依類別篩選專案
    getProjectsByCategory: state => category => {
      if (!category || category === 'all') {
        return state.projects;
      }
      return state.projects.filter(project => project.category === category);
    },

    // 取得專案類別列表
    getProjectCategories: state => {
      const categories = [
        ...new Set(state.projects.map(project => project.category)),
      ];
      return [
        { value: 'all', label: '全部作品' },
        { value: 'web-development', label: '網頁開發' },
        { value: 'game-development', label: '遊戲開發' },
        { value: 'canvas-effects', label: 'Canvas 特效' },
      ].filter(cat => cat.value === 'all' || categories.includes(cat.value));
    },

    // 依類別取得技能
    skillsByCategory: state => category => {
      return state.skills.filter(skill => skill.category === category);
    },

    // 首頁展示的核心技能（指定順序）
    getFeaturedSkills: state => {
      const featuredSkillNames = [
        'Vue.js',
        'Vite',
        'Tailwind CSS',
        'Bootstrap',
        'JavaScript',
        'Unity',
        'PHP',
        'Git'
      ];
      
      // 按照指定順序返回技能，如果找不到則跳過
      return featuredSkillNames
        .map(name => state.skills.find(skill => skill.name === name))
        .filter(skill => skill !== undefined);
    },
  },

  actions: {
    // 更新個人資訊
    updatePersonalInfo(newInfo) {
      this.personalInfo = { ...this.personalInfo, ...newInfo };
    },

    // 新增專案
    addProject(project) {
      const newProject = {
        ...project,
        id: Math.max(...this.projects.map(p => p.id)) + 1,
      };
      this.projects.push(newProject);
    },

    // 更新專案
    updateProject(id, updatedProject) {
      const index = this.projects.findIndex(p => p.id === id);
      if (index !== -1) {
        this.projects[index] = { ...this.projects[index], ...updatedProject };
      }
    },

    // 刪除專案
    removeProject(id) {
      this.projects = this.projects.filter(p => p.id !== id);
    },
  },
});
