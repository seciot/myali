package com.alipay.android.app.display.windows;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.script.EventScriptType;

final class d
  implements Runnable
{
  d(MspWindow paramMspWindow, MspEventArgs paramMspEventArgs, IUIElement paramIUIElement)
  {
  }

  public final void run()
  {
    while (true)
    {
      try
      {
        EventType localEventType1 = this.a.getEventType();
        IEventArgs.EventScript localEventScript = this.a.getEventScript(EventScriptType.a);
        if (localEventScript != null)
        {
          str = localEventScript.b();
          EventType localEventType2 = EventType.a(str);
          if (localEventType2 != null)
          {
            MspWindow.a(this.c, this.b, this.a, localEventType2);
            return;
          }
          MspWindow.a(this.c, localEventScript, str);
          localEventType2 = localEventType1;
          continue;
        }
      }
      catch (Exception localException)
      {
        MonitorThread.a().a(localException, "msp onEvent");
        LogUtils.a(localException);
        return;
      }
      String str = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.d
 * JD-Core Version:    0.6.2
 */