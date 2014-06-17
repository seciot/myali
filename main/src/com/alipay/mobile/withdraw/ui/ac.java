package com.alipay.mobile.withdraw.ui;

import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;

final class ac
  implements AutoReadSmsCheckCodeCallBack
{
  ac(WithdrawSmsCheckActivity paramWithdrawSmsCheckActivity)
  {
  }

  public final void OnAutoReadSms(String paramString)
  {
    this.a.a(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.ac
 * JD-Core Version:    0.6.2
 */