package com.alipay.mobile.mobilerechargeapp.activity;

import com.alipay.mobile.mobilerechargeapp.data.AutoInterface;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.utils.MobileSourceEnum;

final class ba
  implements AutoInterface
{
  ba(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void a()
  {
    MobileRechargeActivity.p(this.a);
    this.a.a(40, null);
  }

  public final void a(ItemData paramItemData, boolean paramBoolean)
  {
    if (paramItemData != null)
    {
      MobileRechargeActivity.q(this.a);
      if (!paramBoolean)
        break label36;
      MobileRechargeActivity.a(this.a, MobileSourceEnum.c);
    }
    while (true)
    {
      this.a.a(0, paramItemData);
      return;
      label36: MobileRechargeActivity.a(this.a, MobileSourceEnum.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.ba
 * JD-Core Version:    0.6.2
 */