package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class l
  implements Runnable
{
  l(LuaExcuteAdapter paramLuaExcuteAdapter, String paramString, String[] paramArrayOfString)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$000(this.c) != null) && (LuaExcuteAdapter.access$000(this.c).get() != null));
    try
    {
      ((IWindowScriptable)LuaExcuteAdapter.access$000(this.c).get()).openWithCallback(this.a, this.b);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "open");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.l
 * JD-Core Version:    0.6.2
 */