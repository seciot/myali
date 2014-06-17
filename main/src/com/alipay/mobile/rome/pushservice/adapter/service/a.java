package com.alipay.mobile.rome.pushservice.adapter.service;

import com.alipay.android.ipp.IppFacade;
import com.alipay.mobile.framework.MicroApplicationContext;
import org.android.agoo.service.AgooWakeup;

final class a
  implements Runnable
{
  a(PushSettingServiceImpl paramPushSettingServiceImpl)
  {
  }

  public final void run()
  {
    MicroApplicationContext localMicroApplicationContext = this.a.getMicroApplicationContext();
    if (localMicroApplicationContext != null)
    {
      new IppFacade(localMicroApplicationContext.getApplicationContext()).performProtect();
      AgooWakeup.wakeup(localMicroApplicationContext.getApplicationContext());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.service.a
 * JD-Core Version:    0.6.2
 */