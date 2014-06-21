package com.alipay.mobile.mobilerechargeapp.activity;

final class bf
  implements Runnable
{
  bf(MobileRechargeActivity paramMobileRechargeActivity, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.a)
    {
      this.b.stop();
      return;
    }
    this.b.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bf
 * JD-Core Version:    0.6.2
 */