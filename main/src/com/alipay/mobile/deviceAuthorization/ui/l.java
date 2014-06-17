package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.alipay.mobile.framework.MicroApplicationContext;

final class l
  implements DialogInterface.OnClickListener
{
  l(BaseAuthActivity paramBaseAuthActivity, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + "95188"));
    localIntent.addFlags(268435456);
    this.b.startActivity(localIntent);
    if (this.a)
      BaseAuthActivity.B(this.b).finishApp("20000055", "20000055", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.l
 * JD-Core Version:    0.6.2
 */