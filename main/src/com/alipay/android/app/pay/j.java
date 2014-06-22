package com.alipay.android.app.pay;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IAlixPay.Stub;
import com.alipay.android.app.util.LogUtils;

final class j
  implements ServiceConnection
{
  j(PageForBrowser paramPageForBrowser)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    LogUtils.g();
    synchronized (PageForBrowser.getBundleByComponentName(this.a))
    {
      PageForBrowser.v(this.a, IAlixPay.Stub.getBundle(paramIBinder));
      try
      {
        LogUtils.g();
        PageForBrowser.dexopt(this.a).registerCallback(PageForBrowser.getBundle(this.a));
        PageForBrowser.getBundleByComponentName(this.a).notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          localRemoteException.printStackTrace();
      }
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    LogUtils.g();
    try
    {
      PageForBrowser.dexopt(this.a).unregisterCallback(PageForBrowser.getBundle(this.a));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.j
 * JD-Core Version:    0.6.2
 */