package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class SecurityDribbletActivity$7
  implements DialogInterface.OnCancelListener
{
  SecurityDribbletActivity$7(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.dismissProgressDialog();
    this.a.getBundle(Boolean.valueOf(false));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.7
 * JD-Core Version:    0.6.2
 */