package com.alipay.mobile.security.securitycommon.fragment;

import com.alipay.mobile.security.securitycommon.SecurityUtil;

class CheckUserIdFragment$2
  implements Runnable
{
  CheckUserIdFragment$2(CheckUserIdFragment paramCheckUserIdFragment)
  {
  }

  public void run()
  {
    if (this.a.isVisible())
    {
      SecurityUtil.i(this.a.getActivity(), CheckUserIdFragment.getBundle(this.a));
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment.2
 * JD-Core Version:    0.6.2
 */