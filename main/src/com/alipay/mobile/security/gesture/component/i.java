package com.alipay.mobile.security.gesture.component;

import android.view.View;
import android.view.View.OnClickListener;

final class i
  implements View.OnClickListener
{
  i(AlipayPattern paramAlipayPattern)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.mPatternChangeListener != null)
      this.a.mPatternChangeListener.a(true, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.i
 * JD-Core Version:    0.6.2
 */