package com.alipay.mobile.framework.service.ext.security;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.qihoo360.contacts.service.ITxlUiService.Stub;

final class a
  implements ServiceConnection
{
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    QihooGuardService.access$002(ITxlUiService.Stub.asInterface(paramIBinder));
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    QihooGuardService.access$002(null);
    QihooGuardService.access$102(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.a
 * JD-Core Version:    0.6.2
 */