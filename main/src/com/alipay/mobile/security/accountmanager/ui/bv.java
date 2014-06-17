package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

final class bv
  implements Runnable
{
  bv(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void run()
  {
    SecurityUtil.c(this.a, this.a.e.getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bv
 * JD-Core Version:    0.6.2
 */