package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class s
  implements Runnable
{
  s(LuaExcuteAdapter paramLuaExcuteAdapter, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$100(this.c) != null) && (LuaExcuteAdapter.access$100(this.c).get() != null));
    try
    {
      ((IDocumentScriptable)LuaExcuteAdapter.access$100(this.c).get()).attr(this.a, this.b);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "attr");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.s
 * JD-Core Version:    0.6.2
 */