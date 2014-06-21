package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

class SecurityPasswordManagerForTUserActivity$3
  implements DialogInterface.OnClickListener
{
  SecurityPasswordManagerForTUserActivity$3(SecurityPasswordManagerForTUserActivity paramSecurityPasswordManagerForTUserActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.i = this.a.g.getUserInfo();
    if (this.a.i != null)
    {
      this.a.h = this.a.i.getLogonId();
      this.a.getBundle(this.a.i);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity.3
 * JD-Core Version:    0.6.2
 */