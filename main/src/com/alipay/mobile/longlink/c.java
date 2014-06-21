package com.alipay.mobile.longlink;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.mobile.longlink.c.a;

final class c
  implements ServiceConnection
{
  c(LongLinkServiceManager paramLongLinkServiceManager)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    LongLinkServiceManager.access$002(this.a, ILongLinkService.Stub.getBundle(paramIBinder));
    if (LongLinkServiceManager.access$000(this.a) != null)
      LongLinkServiceManager.access$102(this.a, true);
    a.e(3, LongLinkServiceManager.access$200(), "onServiceConnected");
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    LongLinkServiceManager.access$102(this.a, false);
    a.e(3, LongLinkServiceManager.access$200(), "onServiceDisconnected");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.c
 * JD-Core Version:    0.6.2
 */