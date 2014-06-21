package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

class SecurityPasswordManagerActivity$9
  implements DialogInterface.OnClickListener
{
  SecurityPasswordManagerActivity$9(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity, ResultBean paramResultBean, boolean paramBoolean)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!"194".equalsIgnoreCase(this.a.getResultCode()))
      SecurityPasswordManagerActivity.a(this.c, this.b);
    do
    {
      return;
      this.c.k = this.c.i.getUserInfo();
    }
    while (this.c.k == null);
    this.c.j = this.c.k.getLogonId();
    this.c.getBundle(this.c.k);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.9
 * JD-Core Version:    0.6.2
 */