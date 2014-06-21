package com.alipay.mobile.security.securitycommon.fragment;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

class SmsCheckFragment$2
  implements Runnable
{
  SmsCheckFragment$2(SmsCheckFragment paramSmsCheckFragment)
  {
  }

  public void run()
  {
    SecurityUtil.i(AlipayApplication.getInstance(), SmsCheckFragment.getBundle(this.a).getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment.2
 * JD-Core Version:    0.6.2
 */