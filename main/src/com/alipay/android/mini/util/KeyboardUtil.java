package com.alipay.android.mini.util;

import android.inputmethodservice.KeyboardView;
import android.view.View.MeasureSpec;

public class KeyboardUtil
{
  private KeyboardView a;

  public final int a()
  {
    int i = View.MeasureSpec.makeMeasureSpec(-2, 0);
    this.a.measure(i, i);
    return this.a.getMeasuredHeight();
  }

  public final void b()
  {
    int i = this.a.getVisibility();
    if ((i == 8) || (i == 4))
      this.a.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.KeyboardUtil
 * JD-Core Version:    0.6.2
 */