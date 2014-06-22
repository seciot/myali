package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;

class SecurityPasswordManagerActivity$2
  implements DialogInterface.OnClickListener
{
  SecurityPasswordManagerActivity$2(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SecurityPasswordManagerActivity.getBundleByComponentName(this.a).finishApp("20000028", "20000028", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.2
 * JD-Core Version:    0.6.2
 */