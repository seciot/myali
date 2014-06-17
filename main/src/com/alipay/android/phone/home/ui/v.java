package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.HomeAppsItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;

final class v
  implements Runnable
{
  v(HomeFragment paramHomeFragment, AppStatusChangeNotify paramAppStatusChangeNotify)
  {
  }

  public final void run()
  {
    HomeFragment.access$300(this.b).c(this.a.getApp());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.v
 * JD-Core Version:    0.6.2
 */