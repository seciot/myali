package com.alipay.android.app.display.uielement;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class o
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private boolean b = false;

  o(BaseElement paramBaseElement)
  {
  }

  public final void onGlobalLayout()
  {
    if (!this.b)
    {
      this.a.r();
      this.b = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.o
 * JD-Core Version:    0.6.2
 */