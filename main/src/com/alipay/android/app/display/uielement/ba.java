package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.app.display.event.EventType;

final class ba
  implements View.OnClickListener
{
  ba(UIImage paramUIImage)
  {
  }

  public final void onClick(View paramView)
  {
    bb localbb = new bb(this, EventType.b);
    this.a.getBundle(localbb);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ba
 * JD-Core Version:    0.6.2
 */