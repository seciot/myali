package com.alipay.mobile.mobilerechargeapp.activity;

import com.alipay.mobile.mobilerechargeapp.MobileRechargeApp;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryManager;

final class aw
  implements Runnable
{
  aw(av paramav)
  {
  }

  public final void run()
  {
    if ((!MobileRechargeActivity.i(this.a.a)) && (MobileRechargeActivity.j(this.a.a)))
      ((MobileRechargeApp)MobileRechargeActivity.l(this.a.a)).mHistoryManager.a(MobileRechargeActivity.k(this.a.a));
    MobileRechargeActivity.m(this.a.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.aw
 * JD-Core Version:    0.6.2
 */