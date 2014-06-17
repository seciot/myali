package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class m
  implements Runnable
{
  m(LuaExcuteAdapter paramLuaExcuteAdapter, String paramString1, String paramString2, String paramString3)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$000(this.d) != null) && (LuaExcuteAdapter.access$000(this.d).get() != null));
    try
    {
      ((IWindowScriptable)LuaExcuteAdapter.access$000(this.d).get()).alert(this.a, this.b, this.c);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "alert");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.m
 * JD-Core Version:    0.6.2
 */