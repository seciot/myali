package com.alipay.mobile.security.securitycommon.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

class SetSimplePwdFragment$1
  implements View.OnClickListener
{
  SetSimplePwdFragment$1(SetSimplePwdFragment paramSetSimplePwdFragment)
  {
  }

  public void onClick(View paramView)
  {
    SecurityUtil.b(AlipayApplication.getInstance(), this.a.b);
    if (SetSimplePwdFragment.a(this.a) != null)
      this.a.a(SetSimplePwdFragment.a(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.1
 * JD-Core Version:    0.6.2
 */