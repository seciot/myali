package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.alipassapp.biz.model.c;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class en
  implements Runnable
{
  en(em paramem)
  {
  }

  public final void run()
  {
    MemberCardObtainableListActivity.a(BehaviourIdEnum.SLIDED, "loadMore", null);
    MemberCardObtainableListActivity.b(this.a.a);
    this.a.a.e.e();
    this.a.a.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.en
 * JD-Core Version:    0.6.2
 */