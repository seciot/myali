package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.app.display.event.EventType;

final class i
  implements View.OnClickListener
{
  i(BaseEditElement paramBaseEditElement)
  {
  }

  public final void onClick(View paramView)
  {
    j localj = new j(this, EventType.b);
    this.a.getBundle(localj);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.i
 * JD-Core Version:    0.6.2
 */