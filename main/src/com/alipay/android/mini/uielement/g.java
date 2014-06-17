package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.mini.event.ActionType;

final class g
  implements View.OnClickListener
{
  g(UIButton paramUIButton)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.c != null);
    for (ActionType[] arrayOfActionType = ActionType.a(this.a.c); ; arrayOfActionType = ActionType.a(this.a.n()))
    {
      this.a.a(this.a, arrayOfActionType);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.g
 * JD-Core Version:    0.6.2
 */