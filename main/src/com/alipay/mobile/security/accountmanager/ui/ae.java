package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class ae
  implements DialogInterface.OnClickListener
{
  ae(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BindPhoneActivity.o(this.a).getMicroApplicationContext().finishApp(BindPhoneActivity.m(this.a).getAppId(), BindPhoneActivity.n(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ae
 * JD-Core Version:    0.6.2
 */