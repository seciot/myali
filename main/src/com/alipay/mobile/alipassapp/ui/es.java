package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.ui.common.ai;

final class es
  implements Runnable
{
  es(MemberCardObtainableListActivity paramMemberCardObtainableListActivity)
  {
  }

  public final void run()
  {
    if (!this.a.isFinishing())
      ai.a(this.a, new et(this), R.string.alipass_open_membercard_error_msg);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.es
 * JD-Core Version:    0.6.2
 */