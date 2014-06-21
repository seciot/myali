package com.alipay.android.phone.home.ui;

import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;

final class j
  implements Runnable
{
  j(HeaderAreaLayout paramHeaderAreaLayout, int paramInt)
  {
  }

  public final void run()
  {
    if (this.a <= 0)
    {
      HeaderAreaLayout.getBundle(this.b).setVisibility(8);
      HeaderAreaLayout.b(this.b).setVisibility(8);
      return;
    }
    HeaderAreaLayout.getBundle(this.b).showMsgFlag(this.a);
    HeaderAreaLayout.getBundle(this.b).setVisibility(0);
    HeaderAreaLayout.b(this.b).showMsgFlag(this.a);
    HeaderAreaLayout.b(this.b).setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.j
 * JD-Core Version:    0.6.2
 */