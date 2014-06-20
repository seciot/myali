package com.alipay.mobile.security.gesture.ui;

import com.alipay.mobile.security.gesture.component.k;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;

final class c
  implements k
{
  c(GestureActivity paramGestureActivity)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3)
      GestureActivity.d(this.a);
    do
    {
      return;
      this.a.b.setHasGestureView(false);
      if ((!paramBoolean1) && (!paramBoolean2))
      {
        GestureActivity.removeBundle(this.a);
        return;
      }
      if (paramBoolean2)
      {
        GestureActivity.f(this.a);
        return;
      }
    }
    while (!paramBoolean1);
    GestureActivity.g(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.c
 * JD-Core Version:    0.6.2
 */