package com.alipay.android.widget.security.ui.authentication;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class BaseAuthenticationFragment$3
  implements DialogInterface.OnClickListener
{
  BaseAuthenticationFragment$3(BaseAuthenticationFragment paramBaseAuthenticationFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BaseAuthenticationFragment.a(false);
    this.a.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationFragment.3
 * JD-Core Version:    0.6.2
 */