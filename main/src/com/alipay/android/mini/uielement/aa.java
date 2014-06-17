package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.mini.event.ActionType;

final class aa
  implements View.OnClickListener
{
  aa(UILink paramUILink)
  {
  }

  public final void onClick(View paramView)
  {
    ElementAction localElementAction = this.a.n();
    if (localElementAction != null)
    {
      ActionType[] arrayOfActionType = ActionType.a(localElementAction);
      this.a.a(this.a, arrayOfActionType);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.aa
 * JD-Core Version:    0.6.2
 */