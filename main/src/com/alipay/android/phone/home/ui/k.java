package com.alipay.android.phone.home.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class k
  implements View.OnClickListener
{
  k(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void onClick(View paramView)
  {
    if (HeaderAreaLayout.d(this.a) != null)
      HeaderAreaLayout.d(this.a).changeState(1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.k
 * JD-Core Version:    0.6.2
 */