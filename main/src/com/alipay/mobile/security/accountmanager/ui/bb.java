package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;

final class bb
  implements OnSendCallback
{
  bb(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    ForgotLoginPwdActivity.v(this.a, null);
    ForgotLoginPwdActivity.getBundle(this.a);
    if (1 == ForgotLoginPwdActivity.dexopt(this.a))
      new Thread(new ForgotLoginPwdActivity.a(this.a, 1, (byte)0)).start();
    while (2 != ForgotLoginPwdActivity.dexopt(this.a))
      return;
    new Thread(new ForgotLoginPwdActivity.a(this.a, 5, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bb
 * JD-Core Version:    0.6.2
 */