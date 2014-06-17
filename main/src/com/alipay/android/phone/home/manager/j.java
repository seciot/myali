package com.alipay.android.phone.home.manager;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.phone.home.util.HomeLogAgentUtil;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class j
  implements DialogInterface.OnClickListener
{
  j(HomeAppsOnItemLongClickListener paramHomeAppsOnItemLongClickListener, App paramApp, HomeAppsItemAdapter paramHomeAppsItemAdapter)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      HomeLogAgentUtil.g(this.a.getAppId());
      if (HomeAppsOnItemLongClickListener.a())
        HomeAppsOnItemLongClickListener.a(this.c);
    }
    while (paramInt != 1)
    {
      return;
      this.a.moveToAppCenter();
      this.b.a(this.a);
    }
    HomeLogAgentUtil.c(this.a.getAppId());
    HomeAppsOnItemLongClickListener.a(this.c, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.j
 * JD-Core Version:    0.6.2
 */