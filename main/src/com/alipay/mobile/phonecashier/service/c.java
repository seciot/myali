package com.alipay.mobile.phonecashier.service;

import com.alipay.android.app.helper.PayHelper;
import com.alipay.mobile.framework.MicroApplicationContext;

final class c
  implements Runnable
{
  c(PhoneCashierServiceImpl paramPhoneCashierServiceImpl)
  {
  }

  public final void run()
  {
    PayHelper.getBundle(this.a.getMicroApplicationContext().getApplicationContext()).getInstance();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.c
 * JD-Core Version:    0.6.2
 */