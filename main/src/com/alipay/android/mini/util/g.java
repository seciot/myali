package com.alipay.android.mini.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.window.IUIForm;

final class g
  implements DialogInterface.OnClickListener
{
  g(IUIForm paramIUIForm, ElementAction[] paramArrayOfElementAction)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(this.a, ActionType.a(this.b[paramInt]));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.g
 * JD-Core Version:    0.6.2
 */