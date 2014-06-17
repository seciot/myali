package com.alipay.mobile.appstoreapp.receiver;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

final class b
  implements Runnable
{
  b(ClientSetupReceiver paramClientSetupReceiver)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(ClientSetupReceiver.access$000(this.a));
      ((AppManageService)((ExternalServiceManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ExternalServiceManager.class.getName())).getExternalService(AppManageService.class.getName())).initAndSyncApps();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.receiver.b
 * JD-Core Version:    0.6.2
 */