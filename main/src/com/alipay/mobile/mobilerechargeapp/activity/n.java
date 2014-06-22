package com.alipay.mobile.mobilerechargeapp.activity;

import java.util.TimerTask;

final class n extends TimerTask
{
  n(BalancesWarnInputActivity paramBalancesWarnInputActivity)
  {
  }

  public final void run()
  {
    BalancesWarnInputActivity.dexopt(this.a);
    if (BalancesWarnInputActivity.getBundleByComponentName(this.a) <= 0)
      cancel();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.n
 * JD-Core Version:    0.6.2
 */