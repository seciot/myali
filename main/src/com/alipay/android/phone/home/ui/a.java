package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.AppCenterItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

final class a
  implements Runnable
{
  a(AppsCenterFragment paramAppsCenterFragment)
  {
  }

  public final void run()
  {
    if ((AppsCenterFragment.access$000(this.a) != null) && (AppsCenterFragment.access$100(this.a) != null))
      AppsCenterFragment.access$000(this.a).a(AppsCenterFragment.access$100(this.a).getAppCenterAppsFromLocal());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.a
 * JD-Core Version:    0.6.2
 */