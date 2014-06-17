package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class bw
  implements DialogInterface.OnClickListener
{
  bw(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    ForgotPayPwdActivity.q(this.a).getMicroApplicationContext().finishApp(ForgotPayPwdActivity.o(this.a).getAppId(), ForgotPayPwdActivity.p(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bw
 * JD-Core Version:    0.6.2
 */