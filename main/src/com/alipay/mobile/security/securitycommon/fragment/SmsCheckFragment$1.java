package com.alipay.mobile.security.securitycommon.fragment;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import java.util.concurrent.atomic.AtomicBoolean;

class SmsCheckFragment$1
  implements View.OnClickListener
{
  SmsCheckFragment$1(SmsCheckFragment paramSmsCheckFragment)
  {
  }

  public void onClick(View paramView)
  {
    String str = SmsCheckFragment.getBundle(this.a).getInputedText();
    if (StringUtils.isEmpty(str))
    {
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(this.a.getResources().getString(R.string.bB), 1);
      return;
    }
    SmsCheckFragment.b(this.a).set(false);
    SmsCheckFragment.c(this.a).dispose();
    this.a.a(str, this.a);
    SecurityUtil.b(AlipayApplication.getInstance(), SmsCheckFragment.getBundle(this.a).getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment.1
 * JD-Core Version:    0.6.2
 */