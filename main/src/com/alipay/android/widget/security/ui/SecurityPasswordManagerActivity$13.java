package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class SecurityPasswordManagerActivity$13
  implements DialogInterface.OnClickListener
{
  SecurityPasswordManagerActivity$13(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (("1830".equals(this.a)) || ("1831".equals(this.a)))
      SecurityPasswordManagerActivity.f(this.b);
    while (!"700".equals(this.a))
      return;
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:95188"));
    this.b.startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.13
 * JD-Core Version:    0.6.2
 */