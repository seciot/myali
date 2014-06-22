package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.alipassapp.biz.common.d;
import com.alipay.mobile.alipassapp.biz.model.a;

final class at
  implements Runnable
{
  at(as paramas)
  {
  }

  public final void run()
  {
    a locala = AlipassListActivity.f(this.a.a).v(this.a.a.getRequireBundleName(), this.a.a.getInitLevel());
    locala.b = true;
    this.a.a.dexopt(locala);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.at
 * JD-Core Version:    0.6.2
 */