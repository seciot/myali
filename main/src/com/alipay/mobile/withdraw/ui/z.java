package com.alipay.mobile.withdraw.ui;

import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;

final class z
  implements OnSendCallback
{
  z(WithdrawSmsCheckActivity paramWithdrawSmsCheckActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    WithdrawSmsCheckActivity.getBundle(this.a).dispose();
    this.a.a();
    WithdrawSmsCheckActivity.a(this.a, paramSendResultCallback);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.z
 * JD-Core Version:    0.6.2
 */