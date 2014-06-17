package com.alipay.mobile.phonecashier.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.mobile.framework.MicroApplicationContext;

final class b extends BroadcastReceiver
{
  b(PhoneCashierServiceImpl paramPhoneCashierServiceImpl)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (PhoneCashierServiceImpl.a(this.a) == 0)
    {
      PhoneCashierServiceImpl.b(this.a);
      if (paramIntent.getBooleanExtra("isClear", false))
        break label53;
      PhoneCashierServiceImpl.c(this.a);
      PhoneCashierServiceImpl.d(this.a);
      PhoneCashierServiceImpl.e(this.a);
    }
    while (true)
    {
      return;
      label53: MicroApplicationContext localMicroApplicationContext = this.a.getMicroApplicationContext();
      if (!TextUtils.isEmpty(PhoneCashierServiceImpl.f(this.a)))
        PhoneCashierServiceImpl.a(this.a, new PhoneCashierTask(localMicroApplicationContext, PhoneCashierServiceImpl.f(this.a), PhoneCashierServiceImpl.g(this.a)));
      while (PhoneCashierServiceImpl.i(this.a) != null)
      {
        PhoneCashierServiceImpl.a = true;
        PhoneCashierTask localPhoneCashierTask = PhoneCashierServiceImpl.i(this.a);
        Boolean[] arrayOfBoolean = new Boolean[1];
        arrayOfBoolean[0] = Boolean.valueOf(true);
        localPhoneCashierTask.execute(arrayOfBoolean);
        PhoneCashierServiceImpl.c(this.a);
        PhoneCashierServiceImpl.d(this.a);
        PhoneCashierServiceImpl.e(this.a);
        return;
        if (PhoneCashierServiceImpl.h(this.a) != null)
          PhoneCashierServiceImpl.a(this.a, new PhoneCashierTask(localMicroApplicationContext, PhoneCashierServiceImpl.h(this.a), PhoneCashierServiceImpl.g(this.a)));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.b
 * JD-Core Version:    0.6.2
 */