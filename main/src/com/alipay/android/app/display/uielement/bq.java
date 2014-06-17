package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.app.display.event.EventType;

final class bq
  implements View.OnClickListener
{
  bq(UIRadioGroup paramUIRadioGroup)
  {
  }

  public final void onClick(View paramView)
  {
    br localbr = new br(this, EventType.b);
    this.a.a(localbr);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bq
 * JD-Core Version:    0.6.2
 */