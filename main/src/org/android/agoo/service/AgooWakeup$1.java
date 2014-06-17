package org.android.agoo.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

final class AgooWakeup$1
  implements ServiceConnection
{
  private volatile IMessageService a = null;

  AgooWakeup$1(Context paramContext)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Log.d("AgooWake", "messageConnected pack[" + paramComponentName.getPackageName() + "]");
      this.a = IMessageService.Stub.asInterface(paramIBinder);
      this.a.probe();
      Context localContext = this.val$context;
      if ((localContext != null) && (this != null));
      try
      {
        Log.w("AgooWake", "close wakeup");
        this.val$context.unbindService(this);
        return;
      }
      catch (Exception localException2)
      {
        Log.w("AgooWake", "closeMessage [unbindservice]", localException2);
        return;
      }
    }
    catch (Exception localException1)
    {
      Log.w("AgooWake", "serviceConnected remoteException", localException1);
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Log.d("AgooWake", "messageDisconnected pack[" + paramComponentName.getPackageName() + "]");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.android.agoo.service.AgooWakeup.1
 * JD-Core Version:    0.6.2
 */