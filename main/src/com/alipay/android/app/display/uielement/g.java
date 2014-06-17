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
    BaseEditElement.a(this.a);
    if (!paramBoolean)
      BaseEditElement.b(this.a);
    h localh = new h(this, EventType.d, paramBoolean);
    this.a.a(localh);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.g
 * JD-Core Version:    0.6.2
 */