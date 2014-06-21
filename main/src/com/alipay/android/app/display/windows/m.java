package com.alipay.android.app.display.windows;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.sys.GlobalContext;

final class m
  implements Runnable
{
  m(WindowsManager paramWindowsManager)
  {
  }

  public final void run()
  {
    Context localContext = GlobalContext.a().b();
    String str1 = localContext.getString(R.string.l);
    String str2 = WindowsManager.b(this.a).b();
    if (TextUtils.isEmpty(str2))
      str2 = localContext.getString(R.string.m);
    String str3 = localContext.getString(17039370);
    String str4 = localContext.getString(17039360);
    WindowsManager.getBundle(this.a).confirm(EventType.s.a(), EventType.v.a(), str1, str2, null, str3, str4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.m
 * JD-Core Version:    0.6.2
 */