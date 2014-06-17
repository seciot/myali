package com.alipay.android.widget.security.ui.authentication;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class BaseAuthenticationActivity$1$1
  implements DialogInterface.OnClickListener
{
  BaseAuthenticationActivity$1$1(BaseAuthenticationActivity.1 param1)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + "95188"));
    localIntent.addFlags(268435456);
    this.a.a.startActivity(localIntent);
    BaseAuthenticationActivity.a(false);
    this.a.c.f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationActivity.1.1
 * JD-Core Version:    0.6.2
 */