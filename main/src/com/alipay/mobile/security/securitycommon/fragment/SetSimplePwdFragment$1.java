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
    SecurityUtil.d(AlipayApplication.getInstance(), this.a.b);
    if (SetSimplePwdFragment.getBundle(this.a) != null)
      this.a.getBundle(SetSimplePwdFragment.getBundle(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment.1
 * JD-Core Version:    0.6.2
 */