package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class s
  implements DialogInterface.OnClickListener
{
  s(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BindPhoneActivity.u(this.a).getMicroApplicationContext().finishApp(BindPhoneActivity.s(this.a).getAppId(), BindPhoneActivity.t(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.s
 * JD-Core Version:    0.6.2
 */