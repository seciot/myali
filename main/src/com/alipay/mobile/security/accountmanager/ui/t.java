package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.alipay.mobile.commonui.widget.APButton;

final class t
  implements DialogInterface.OnKeyListener
{
  t(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramDialogInterface.cancel();
      this.a.h.setEnabled(true);
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.t
 * JD-Core Version:    0.6.2
 */