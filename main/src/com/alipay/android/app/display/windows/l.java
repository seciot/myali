package com.alipay.android.app.display.windows;

import com.alipay.android.app.data.Orientation;

final class l
  implements Runnable
{
  l(WindowsManager paramWindowsManager, UIWindow paramUIWindow, Orientation paramOrientation)
  {
  }

  public final void run()
  {
    WindowsManager.a(this.c, System.currentTimeMillis());
    if (WindowsManager.a(this.c) != null)
    {
      IContainer localIContainer = WindowsManager.a(this.c);
      UIWindow localUIWindow = this.a;
      localIContainer.a(localUIWindow);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.l
 * JD-Core Version:    0.6.2
 */