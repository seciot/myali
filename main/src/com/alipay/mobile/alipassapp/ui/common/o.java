package com.alipay.mobile.alipassapp.ui.common;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

final class o
  implements View.OnClickListener
{
  o(k paramk)
  {
  }

  public final void onClick(View paramView)
  {
    if (k.e(this.a) != null)
    {
      k.c(this.a).removeView(k.e(this.a));
      k.f(this.a);
    }
    if (k.g(this.a) != null)
      k.g(this.a).e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.o
 * JD-Core Version:    0.6.2
 */