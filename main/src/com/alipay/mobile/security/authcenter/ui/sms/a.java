package com.alipay.mobile.security.authcenter.ui.sms;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

final class a
  implements Runnable
{
  a(SMSReceiveFragment paramSMSReceiveFragment)
  {
  }

  public final void run()
  {
    SecurityUtil.c(AlipayApplication.getInstance(), SMSReceiveFragment.a(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.a
 * JD-Core Version:    0.6.2
 */