package com.alipay.android.app.display.uielement;

import android.view.View;
import com.alipay.android.app.display.event.MspEventArgs;

final class p
  implements Runnable
{
  p(BaseElement paramBaseElement, int paramInt, MspEventArgs paramMspEventArgs)
  {
  }

  public final void run()
  {
    if (BaseElement.getBundle(this.c) != null)
    {
      BaseElement.getBundle(this.c).setVisibility(this.a);
      this.c.getBundle(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.p
 * JD-Core Version:    0.6.2
 */