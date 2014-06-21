package com.alipay.android.app.display.windows;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.exception.FailOperatingException;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.GlobalContext;

final class a
  implements Runnable
{
  a(MspWindow paramMspWindow, Exception paramException)
  {
  }

  public final void run()
  {
    Context localContext = GlobalContext.a().b();
    String str1 = localContext.getString(R.string.s);
    if ((this.a instanceof FailOperatingException));
    for (String str2 = this.a.getMessage(); ; str2 = null)
    {
      if ((GlobalConstant.DEBUG) && ((this.a instanceof AppErrorException)))
        str2 = this.a.getMessage();
      boolean bool = TextUtils.isEmpty(str2);
      String str3;
      if ((GlobalConstant.DEBUG) && (bool))
        str3 = localContext.getString(R.string.p);
      while (true)
      {
        String str4 = localContext.getString(17039370);
        MspWindow.getBundle(this.b).confirm(EventType.s.a(), null, str1, str3, null, str4, null);
        return;
        if (bool)
          str3 = localContext.getString(R.string.n);
        else
          str3 = str2;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.a
 * JD-Core Version:    0.6.2
 */