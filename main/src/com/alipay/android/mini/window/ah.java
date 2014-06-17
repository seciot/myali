package com.alipay.android.mini.window;

import android.view.ViewGroup;
import com.alipay.android.mini.uielement.BaseElement;
import com.alipay.android.mini.widget.animation.DisplayRotate3D.onCompletedListener;

final class ah
  implements DisplayRotate3D.onCompletedListener
{
  ah(UISubForm paramUISubForm, ViewGroup paramViewGroup)
  {
  }

  public final void a()
  {
    this.a.removeAllViews();
    this.a.addView(UISubForm.a(this.b));
    if (UISubForm.b(this.b) != null)
      UISubForm.b(this.b).g();
    UISubForm.c(this.b);
    UISubForm.d(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.ah
 * JD-Core Version:    0.6.2
 */