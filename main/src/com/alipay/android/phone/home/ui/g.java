package com.alipay.android.phone.home.ui;

import com.alipay.mobile.commonui.widget.APTextView;

final class g
  implements Runnable
{
  g(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void run()
  {
    if (HeaderAreaLayout.removeBundle(this.a) != null)
      HeaderAreaLayout.removeBundle(this.a).setText("支付宝");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.g
 * JD-Core Version:    0.6.2
 */