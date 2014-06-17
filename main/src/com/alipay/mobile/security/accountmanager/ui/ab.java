package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class ab
  implements DialogInterface.OnClickListener
{
  ab(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + "95188"));
    localIntent.addFlags(268435456);
    this.a.startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ab
 * JD-Core Version:    0.6.2
 */