package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.security.securitycommon.Constants;

final class br
  implements OnSendCallback
{
  br(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    ForgotPayPwdActivity.getBundle(this.a);
    if (Constants.BACK_PWD_SMS_SWITCH_UP == ForgotPayPwdActivity.dexopt(this.a))
      this.a.i.scheduleTimer();
    while ((ForgotPayPwdActivity.getBundleByComponentName(this.a) != null) && (!"".equals(ForgotPayPwdActivity.getBundleByComponentName(this.a))))
    {
      new Thread(new ForgotPayPwdActivity.a(this.a, 1, (byte)0)).start();
      return;
      this.a.k.scheduleTimer();
    }
    new Thread(new ForgotPayPwdActivity.a(this.a, 0, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.br
 * JD-Core Version:    0.6.2
 */