import { createRouter, createWebHashHistory } from 'vue-router';

// 懶載入頁面組件
const Home = () => import('@/views/Home.vue');
const About = () => import('@/views/About.vue');
const Experience = () => import('@/views/Experience.vue');
const Portfolio = () => import('@/views/Portfolio.vue');
const Skills = () => import('@/views/Skills.vue');
const Contact = () => import('@/views/Contact.vue');

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: {
      title: '首頁 - Jun Xiao 履歷',
    },
  },
  {
    path: '/about',
    name: 'About',
    component: About,
    meta: {
      title: '關於我 - Jun Xiao 履歷',
    },
  },
  {
    path: '/experience',
    name: 'Experience',
    component: Experience,
    meta: {
      title: '工作經歷 - Jun Xiao 履歷',
    },
  },
  {
    path: '/portfolio',
    name: 'Portfolio',
    component: Portfolio,
    meta: {
      title: '作品集 - Jun Xiao 履歷',
    },
  },
  {
    path: '/skills',
    name: 'Skills',
    component: Skills,
    meta: {
      title: '技能 - Jun Xiao 履歷',
    },
  },
  {
    path: '/contact',
    name: 'Contact',
    component: Contact,
    meta: {
      title: '聯絡資訊 - Jun Xiao 履歷',
    },
  },
  {
    path: '/:pathMatch(.*)*',
    name: 'NotFound',
    redirect: '/',
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
  scrollBehavior(_to, _from, savedPosition) {
    if (savedPosition) {
      return savedPosition;
    } else {
      return { top: 0 };
    }
  },
});

// 路由守衛 - 設置頁面標題
router.beforeEach((to, _from, next) => {
  document.title = to.meta?.title || 'Jun Xiao 履歷';
  next();
});

export default router;
