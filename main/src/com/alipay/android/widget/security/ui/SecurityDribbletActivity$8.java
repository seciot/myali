package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class SecurityDribbletActivity$8
  implements DialogInterface.OnCancelListener
{
  SecurityDribbletActivity$8(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    if ((SecurityDribbletActivity.e(this.a) != null) && (SecurityDribbletActivity.e(this.a).isAlive()))
      SecurityDribbletActivity.e(this.a).interrupt();
    paramDialogInterface.cancel();
    this.a.a(Boolean.valueOf(true));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.8
 * JD-Core Version:    0.6.2
 */