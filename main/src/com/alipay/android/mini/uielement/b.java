package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.mini.event.ActionType;

final class b
  implements View.OnClickListener
{
  b(BaseElement paramBaseElement)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.c != null);
    for (ElementAction localElementAction = this.a.c; ; localElementAction = this.a.getAllComponentNames())
    {
      if (localElementAction != null)
      {
        ActionType[] arrayOfActionType = ActionType.a(localElementAction);
        this.a.v(this, arrayOfActionType);
      }
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.b
 * JD-Core Version:    0.6.2
 */