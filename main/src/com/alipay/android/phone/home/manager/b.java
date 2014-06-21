package com.alipay.android.phone.home.manager;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.phone.home.util.HomeLogAgentUtil;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class b
  implements DialogInterface.OnClickListener
{
  b(AppCenterOnItemLongClickListener paramAppCenterOnItemLongClickListener, App paramApp, AppCenterItemAdapter paramAppCenterItemAdapter)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      HomeLogAgentUtil.i(this.a.getAppId());
      if (AppCenterOnItemLongClickListener.a())
        AppCenterOnItemLongClickListener.getBundle(this.c);
    }
    while (paramInt != 1)
    {
      return;
      this.a.moveToHome();
      this.b.getBundle(this.a);
    }
    HomeLogAgentUtil.removeBundle(this.a.getAppId());
    AppCenterOnItemLongClickListener.a(this.c, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.b
 * JD-Core Version:    0.6.2
 */