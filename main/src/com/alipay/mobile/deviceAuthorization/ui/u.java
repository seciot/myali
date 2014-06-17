package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class u
  implements DialogInterface.OnClickListener
{
  u(BaseAuthActivity paramBaseAuthActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, SmsCheckActivity_.class);
    BaseAuthActivity.A(this.a).getMicroApplicationContext().startActivityForResult(BaseAuthActivity.z(this.a), localIntent, 6001);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.u
 * JD-Core Version:    0.6.2
 */