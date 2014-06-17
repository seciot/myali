package com.alipay.mobile.security.gesture.component;

import android.view.View;
import android.view.View.OnClickListener;

final class b
  implements View.OnClickListener
{
  b(AlipayPattern paramAlipayPattern)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.mPatternCheckedListener != null)
      this.a.mPatternCheckedListener.a(false, false, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.b
 * JD-Core Version:    0.6.2
 */