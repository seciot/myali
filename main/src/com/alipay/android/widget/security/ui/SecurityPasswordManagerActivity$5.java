package com.alipay.android.widget.security.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;

class SecurityPasswordManagerActivity$5
  implements DialogInterface.OnClickListener
{
  SecurityPasswordManagerActivity$5(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity, APEditText paramAPEditText, boolean paramBoolean)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.c.m.dismiss();
    String str = this.a.getText().toString();
    new StringBuilder("校验的账号密码为： ").append(this.c.j).append(",").append(str).toString();
    if (!"".equalsIgnoreCase(str.trim()))
    {
      this.c.showProgressDialog(this.c.getResources().getString(R.string.bF), false, null);
      this.c.a(this.c.j, str, this.b);
      return;
    }
    APToggleButton localAPToggleButton = this.c.a.getToggleButton();
    if (!this.b);
    for (boolean bool = true; ; bool = false)
    {
      localAPToggleButton.setChecked(bool);
      this.c.toast(this.c.getResources().getString(R.string.by), 0);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.5
 * JD-Core Version:    0.6.2
 */