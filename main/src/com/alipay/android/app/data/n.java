package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class n
  implements Runnable
{
  n(LuaExcuteAdapter paramLuaExcuteAdapter, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$000(this.h) != null) && (LuaExcuteAdapter.access$000(this.h).get() != null));
    try
    {
      ((IWindowScriptable)LuaExcuteAdapter.access$000(this.h).get()).confirm(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "confirm");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.n
 * JD-Core Version:    0.6.2
 */