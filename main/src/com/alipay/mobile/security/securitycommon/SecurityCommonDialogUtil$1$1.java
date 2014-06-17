package com.alipay.mobile.security.securitycommon;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class SecurityCommonDialogUtil$1$1
  implements DialogInterface.OnClickListener
{
  SecurityCommonDialogUtil$1$1(SecurityCommonDialogUtil.1 param1)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + "95188"));
    localIntent.addFlags(268435456);
    this.a.a.startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil.1.1
 * JD-Core Version:    0.6.2
 */