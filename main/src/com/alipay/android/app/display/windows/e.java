package com.alipay.android.app.display.windows;

import com.alipay.android.app.script.IWindowScriptable;

final class e
  implements Runnable
{
  e(MspWindow paramMspWindow)
  {
  }

  public final void run()
  {
    if (MspWindow.getBundle(this.a) != null)
      MspWindow.getBundle(this.a).loading(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.e
 * JD-Core Version:    0.6.2
 */