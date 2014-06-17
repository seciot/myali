package com.alipay.android.app.data;

import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

final class q
  implements Runnable
{
  q(LuaExcuteAdapter paramLuaExcuteAdapter)
  {
  }

  public final void run()
  {
    if ((LuaExcuteAdapter.access$000(this.a) != null) && (LuaExcuteAdapter.access$000(this.a).get() != null));
    try
    {
      ((IWindowScriptable)LuaExcuteAdapter.access$000(this.a).get()).dismiss();
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "dimiss");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.q
 * JD-Core Version:    0.6.2
 */