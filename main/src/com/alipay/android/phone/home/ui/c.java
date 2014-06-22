package com.alipay.android.phone.home.ui;

import com.alipay.android.phone.home.manager.AppCenterItemAdapter;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;

final class c
  implements Runnable
{
  c(AppsCenterFragment paramAppsCenterFragment, AppStatusChangeNotify paramAppStatusChangeNotify)
  {
  }

  public final void run()
  {
    AppsCenterFragment.access$000(this.b).getBundleByComponentName(this.a.getApp());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.c
 * JD-Core Version:    0.6.2
 */