package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class o
  implements Runnable
{
  o(LuaExcuteAdapter paramLuaExcuteAdapter, String paramString)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$000(this.b) != null) && (LuaExcuteAdapter.access$000(this.b).get() != null));
    try
    {
      ((IWindowScriptable)LuaExcuteAdapter.access$000(this.b).get()).submit(this.a);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "submit");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.o
 * JD-Core Version:    0.6.2
 */