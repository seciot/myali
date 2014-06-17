package com.alipay.android.mini.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.mini.event.ActionType;

final class l
  implements View.OnClickListener
{
  l(UIIcon paramUIIcon)
  {
  }

  public final void onClick(View paramView)
  {
    ActionType[] arrayOfActionType;
    int j;
    label27: ActionType localActionType;
    if (this.a.c != null)
    {
      arrayOfActionType = ActionType.a(this.a.c);
      int i = arrayOfActionType.length;
      j = 0;
      if (j >= i)
        return;
      localActionType = arrayOfActionType[j];
      if (localActionType != ActionType.C)
        break label74;
      UIIcon.a(this.a);
    }
    while (true)
    {
      j++;
      break label27;
      arrayOfActionType = ActionType.a(this.a.n());
      break;
      label74: this.a.a(this, localActionType);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.l
 * JD-Core Version:    0.6.2
 */