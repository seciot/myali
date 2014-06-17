package com.alipay.android.widget.security.ui.authentication;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class BaseAuthenticationActivity$1$2
  implements DialogInterface.OnClickListener
{
  BaseAuthenticationActivity$1$2(BaseAuthenticationActivity.1 param1)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    if (this.a.b != null)
      this.a.b.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationActivity.1.2
 * JD-Core Version:    0.6.2
 */