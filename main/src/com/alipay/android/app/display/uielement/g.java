package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.alipay.android.app.display.event.EventType;

final class g
  implements View.OnFocusChangeListener
{
  g(BaseEditElement paramBaseEditElement)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    BaseEditElement.getBundle(this.a);
    if (!paramBoolean)
      BaseEditElement.dexopt(this.a);
    h localh = new h(this, EventType.d, paramBoolean);
    this.a.getBundle(localh);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.g
 * JD-Core Version:    0.6.2
 */