package com.alipay.android.app.display.windows;

import com.alipay.android.app.data.Orientation;

final class k
  implements Runnable
{
  k(WindowsManager paramWindowsManager, UIWindow paramUIWindow, Orientation paramOrientation)
  {
  }

  public final void run()
  {
    WindowsManager.v(this.c, System.currentTimeMillis());
    if (WindowsManager.getBundle(this.c) != null)
      WindowsManager.getBundle(this.c).v(this.a, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.k
 * JD-Core Version:    0.6.2
 */