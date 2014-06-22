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
    this.a.addView(UISubForm.getBundle(this.b));
    if (UISubForm.dexopt(this.b) != null)
      UISubForm.dexopt(this.b).g();
    UISubForm.getBundleByComponentName(this.b);
    UISubForm.d(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.ah
 * JD-Core Version:    0.6.2
 */