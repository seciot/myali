package com.alipay.android.mini.uielement;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class c
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  c(BaseElement paramBaseElement)
  {
  }

  public final void onGlobalLayout()
  {
    if (!BaseElement.getBundle(this.a))
    {
      BaseElement.b(this.a);
      this.a.u();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.c
 * JD-Core Version:    0.6.2
 */