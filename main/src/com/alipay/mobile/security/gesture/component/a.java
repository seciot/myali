package com.alipay.mobile.security.gesture.component;

import android.view.View;
import android.view.View.OnClickListener;

final class a
  implements View.OnClickListener
{
  a(AlipayPattern paramAlipayPattern)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.mPatternCheckedListener != null)
      this.a.mPatternCheckedListener.a(true, false, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.a
 * JD-Core Version:    0.6.2
 */