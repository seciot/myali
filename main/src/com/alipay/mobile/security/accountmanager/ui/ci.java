package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

final class ci
  implements Runnable
{
  ci(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void run()
  {
    SecurityUtil.i(this.a, this.a.a.getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ci
 * JD-Core Version:    0.6.2
 */