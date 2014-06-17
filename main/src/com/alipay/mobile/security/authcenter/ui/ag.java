package com.alipay.mobile.security.authcenter.ui;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

final class ag
  implements Runnable
{
  ag(RegisterDownSmsFragment paramRegisterDownSmsFragment)
  {
  }

  public final void run()
  {
    SecurityUtil.c(this.a.getActivity(), this.a.d.getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ag
 * JD-Core Version:    0.6.2
 */