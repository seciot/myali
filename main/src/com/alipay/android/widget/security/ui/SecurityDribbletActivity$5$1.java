package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class SecurityDribbletActivity$5$1
  implements DialogInterface.OnClickListener
{
  SecurityDribbletActivity$5$1(SecurityDribbletActivity.5 param5)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new Thread(new SecurityDribbletActivity.ListenerThread(this.a.a, 2, (byte)0)).start();
    this.a.a.showProgressDialog(null, true, this.a.a.m);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.5.1
 * JD-Core Version:    0.6.2
 */