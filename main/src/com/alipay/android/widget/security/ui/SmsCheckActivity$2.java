package com.alipay.android.widget.security.ui;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

class SmsCheckActivity$2
  implements Runnable
{
  SmsCheckActivity$2(SmsCheckActivity paramSmsCheckActivity)
  {
  }

  public void run()
  {
    SecurityUtil.c(AlipayApplication.getInstance(), SmsCheckActivity.getBundle(this.a).getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SmsCheckActivity.2
 * JD-Core Version:    0.6.2
 */