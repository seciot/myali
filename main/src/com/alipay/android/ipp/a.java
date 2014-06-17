package com.alipay.android.ipp;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.alipay.android.ipp.binder.aidl.IppInterface;
import com.alipay.android.ipp.binder.aidl.IppInterface.Stub;

final class a
  implements ServiceConnection
{
  a(IppFacade paramIppFacade)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Log.i(IppFacade.access$0(), "Service Connected ComponentName:" + paramComponentName.getPackageName());
      if (!IppFacade.access$1(this.a, paramComponentName.getPackageName()))
      {
        Log.i(IppFacade.access$0(), "Illegal Service Abandoned");
        return;
      }
      if (IppFacade.access$2(this.a))
      {
        Log.i(IppFacade.access$0(), "Just Connection");
        IppFacade.access$3(this.a).unbindService(IppFacade.access$4(this.a));
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return;
    }
    IppInterface localIppInterface = IppInterface.Stub.asInterface(paramIBinder);
    new Thread(new d(this.a, localIppInterface, paramComponentName.getPackageName())).start();
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Log.i(IppFacade.access$0(), "Service Disconnected");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.a
 * JD-Core Version:    0.6.2
 */