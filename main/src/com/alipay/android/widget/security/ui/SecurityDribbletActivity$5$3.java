package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class SecurityDribbletActivity$5$3
  implements DialogInterface.OnKeyListener
{
  SecurityDribbletActivity$5$3(SecurityDribbletActivity.5 param5)
  {
  }

  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramDialogInterface.cancel();
      this.a.a.a(Boolean.valueOf(true));
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.5.3
 * JD-Core Version:    0.6.2
 */