package com.alipay.android.app.display.windows;

import android.content.Context;
import com.alipay.android.app.R.string;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.GlobalContext;
import java.lang.ref.WeakReference;

final class j
  implements Runnable
{
  j(i parami)
  {
  }

  public final void run()
  {
    Context localContext = GlobalContext.a().b();
    String str1 = localContext.getString(R.string.o);
    String str2 = localContext.getString(17039370);
    String str3 = localContext.getString(R.string.u);
    if ("must".equals(i.a(this.a)));
    for (String str4 = EventType.s.a(); ; str4 = EventType.t.a())
    {
      String str5 = localContext.getString(17039360);
      if ((i.b(this.a) != null) && (i.b(this.a).get() != null))
        ((IWindowScriptable)i.b(this.a).get()).confirm(EventType.q.a(), str4, str1, str3, null, str2, str5);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.j
 * JD-Core Version:    0.6.2
 */