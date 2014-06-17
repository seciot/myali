package com.alipay.android.widget.security.ui.authentication;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class BaseAuthenticationActivity$1$3
  implements DialogInterface.OnKeyListener
{
  BaseAuthenticationActivity$1$3(BaseAuthenticationActivity.1 param1)
  {
  }

  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramDialogInterface.cancel();
      if (this.a.b != null)
        this.a.b.a();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationActivity.1.3
 * JD-Core Version:    0.6.2
 */