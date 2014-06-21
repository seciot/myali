package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.HomeAppsItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

final class t
  implements Runnable
{
  t(HomeFragment paramHomeFragment)
  {
  }

  public final void run()
  {
    if ((HomeFragment.access$300(this.a) != null) && (HomeFragment.access$400(this.a) != null))
      HomeFragment.access$300(this.a).getBundle(HomeFragment.access$400(this.a).getHomeAppsFromLocal());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.t
 * JD-Core Version:    0.6.2
 */