// Profile images index file
// 專門用於 import profile 資料夾中的圖片檔案（除了 avatar.png）

import fia from '@/assets/img/profile/fia.png';
import joyGame from '@/assets/img/profile/joyGame.png';
import taiwanJob from '@/assets/img/profile/taiwanJob.png';
import tendasoft from '@/assets/img/profile/tendasoft.png';

// 導出所有圖片
export { fia, joyGame, taiwanJob, tendasoft };

// 也可以使用預設導出物件的方式
export default {
  fia,
  joyGame,
  taiwanJob,
  tendasoft,
};

// 或者使用更語義化的名稱
export const companyLogos = {
  fia,
  joyGame,
  taiwanJob,
  tendasoft,
};