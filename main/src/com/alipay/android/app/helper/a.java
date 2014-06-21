package com.alipay.android.app.helper;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.android.app.IAlixPay.Stub;

final class a
  implements ServiceConnection
{
  a(PayHelper paramPayHelper)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    PayHelper.a(this.a, IAlixPay.Stub.getBundle(paramIBinder));
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    PayHelper.a(this.a, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.a
 * JD-Core Version:    0.6.2
 */