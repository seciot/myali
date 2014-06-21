package com.alipay.android.widgets.asset;

import android.app.Activity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.lang.ref.WeakReference;

final class c
  implements Runnable
{
  c(WealthHomeBroadcastReciever paramWealthHomeBroadcastReciever)
  {
  }

  public final void run()
  {
    Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null);
    for (String str = localActivity.getClass().getSimpleName(); ; str = "NULL")
    {
      if ((localActivity == null) || ((!"GestureActivity_".equals(str)) && (!"LoginActivity_".equals(str))))
        WealthHomeBroadcastReciever.getBundle(this.a);
      WealthHomeBroadcastReciever.a();
      new StringBuilder().append(str).append(",showWap = ").append(WealthHomeBroadcastReciever.b(this.a)).toString();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.c
 * JD-Core Version:    0.6.2
 */