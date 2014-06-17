package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class ao
  implements DialogInterface.OnClickListener
{
  ao(an paraman)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ("5310".equalsIgnoreCase(this.a.a))
    {
      if (StringUtils.equals("msp", ForgotLoginPwdActivity.x(this.a.b)))
      {
        ForgotLoginPwdActivity.y(this.a.b).getMicroApplicationContext().exit();
        return;
      }
      if (StringUtils.equals("alipay", ForgotLoginPwdActivity.x(this.a.b)))
      {
        ForgotLoginPwdActivity.A(this.a.b).finishApp("", ForgotLoginPwdActivity.z(this.a.b).getAppId(), null);
        return;
      }
      ForgotLoginPwdActivity.a(this.a.b, ForgotLoginPwdActivity.u(this.a.b), null, false, true, false);
      return;
    }
    ForgotLoginPwdActivity.a(this.a.b, ForgotLoginPwdActivity.u(this.a.b), ForgotLoginPwdActivity.B(this.a.b), true, true, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ao
 * JD-Core Version:    0.6.2
 */