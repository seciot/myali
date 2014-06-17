package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.app.display.event.EventType;

final class bk
  implements View.OnClickListener
{
  bk(UILink paramUILink)
  {
  }

  public final void onClick(View paramView)
  {
    bl localbl = new bl(this, EventType.b);
    this.a.a(localbl);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bk
 * JD-Core Version:    0.6.2
 */