package com.alipay.android.app.display.windows;

import android.content.Context;
import com.alipay.android.app.R.string;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.GlobalContext;

final class b
  implements Runnable
{
  b(MspWindow paramMspWindow, Exception paramException)
  {
  }

  public final void run()
  {
    String str = GlobalContext.a().b().getString(R.string.l);
    MspWindow.a(this.b).alert(str, this.a.getMessage());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.b
 * JD-Core Version:    0.6.2
 */