package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class au
  implements DialogInterface.OnClickListener
{
  au(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (StringUtils.equals("msp", ForgotLoginPwdActivity.x(this.a)))
    {
      ForgotLoginPwdActivity.G(this.a).getMicroApplicationContext().exit();
      return;
    }
    if (StringUtils.equals("alipay", ForgotLoginPwdActivity.x(this.a)))
    {
      ForgotLoginPwdActivity.I(this.a).finishApp("", ForgotLoginPwdActivity.H(this.a).getAppId(), null);
      return;
    }
    ForgotLoginPwdActivity.a(this.a, ForgotLoginPwdActivity.u(this.a), null, false, false, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.au
 * JD-Core Version:    0.6.2
 */