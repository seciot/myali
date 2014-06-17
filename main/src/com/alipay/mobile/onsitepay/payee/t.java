package com.alipay.mobile.onsitepay.payee;

import com.alipay.mobile.framework.MicroApplicationContext;

final class t
  implements Runnable
{
  t(s params)
  {
  }

  public final void run()
  {
    this.a.c.getMicroApplicationContext().startActivity(this.a.c, FacePayeeActivity_.class.getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.t
 * JD-Core Version:    0.6.2
 */