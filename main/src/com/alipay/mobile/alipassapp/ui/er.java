package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.alipassapp.biz.model.c;
import java.util.concurrent.atomic.AtomicBoolean;

final class er
  implements Runnable
{
  er(MemberCardObtainableListActivity paramMemberCardObtainableListActivity)
  {
  }

  public final void run()
  {
    if (this.a.e.getInitLevel())
      this.a.d.getMoreFinish(true);
    if (!this.a.e.getBundlePath())
    {
      if (this.a.e.a())
        break label58;
      this.a.b();
    }
    label58: 
    do
    {
      return;
      if ((!this.a.e.getInitLevel()) && (!this.a.e.getBundleName()))
      {
        MemberCardObtainableListActivity.removeBundle(this.a);
        return;
      }
    }
    while (MemberCardObtainableListActivity.getBundle(this.a).get());
    this.a.d.a(this.a.e.b(), this.a.e.getInitLevel());
    long l = System.currentTimeMillis() - MemberCardObtainableListActivity.f(this.a);
    new StringBuilder("会员卡领卡列表加载时间").append(l).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.er
 * JD-Core Version:    0.6.2
 */