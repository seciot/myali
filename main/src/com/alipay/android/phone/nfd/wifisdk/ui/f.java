package com.alipay.android.phone.nfd.wifisdk.ui;

import android.app.Activity;
import java.lang.ref.WeakReference;

final class f
  implements Runnable
{
  WeakReference a = new WeakReference(this.b.a);

  f(e parame)
  {
  }

  public final void run()
  {
    Activity localActivity = (Activity)this.a.get();
    if ((localActivity != null) && ((localActivity instanceof WifiConnectingActivity)))
    {
      ((WifiConnectingActivity)localActivity).finish();
      WifiConnectingActivity.removeBundle(this.b.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.f
 * JD-Core Version:    0.6.2
 */