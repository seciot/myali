package com.alipay.android.app.display.windows;

import com.alipay.android.app.display.uielement.IUIElement;
import com.alipay.android.app.sys.IDispose;

final class f
  implements Runnable
{
  f(MspWindow paramMspWindow)
  {
  }

  public final void run()
  {
    if (MspWindow.b(this.a) != null)
    {
      for (IUIElement localIUIElement : MspWindow.b(this.a).stop())
        if ((localIUIElement != null) && ((localIUIElement instanceof IDispose)))
          ((IDispose)localIUIElement).dispose();
      MspWindow.c(this.a);
    }
    MspWindow.d(this.a);
    MspWindow.removeBundle(this.a);
    MspWindow.f(this.a);
    MspWindow.g(this.a);
    MspWindow.h(this.a);
    MspWindow.i(this.a);
    MspWindow.j(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.f
 * JD-Core Version:    0.6.2
 */