package com.alipay.mobile.security.securitycommon;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

class SecurityUtil$5
  implements View.OnClickListener
{
  SecurityUtil$5(SecurityUtil paramSecurityUtil, View.OnClickListener paramOnClickListener)
  {
  }

  public void onClick(View paramView)
  {
    if (SecurityUtil.a(this.b) != null)
      SecurityUtil.a(this.b).dismiss();
    if (this.a != null)
      this.a.onClick(paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityUtil.5
 * JD-Core Version:    0.6.2
 */