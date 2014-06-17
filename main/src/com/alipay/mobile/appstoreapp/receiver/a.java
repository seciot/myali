package com.alipay.mobile.appstoreapp.receiver;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

final class a
  implements Runnable
{
  a(ClientSetupReceiver paramClientSetupReceiver)
  {
  }

  public final void run()
  {
    try
    {
      LogCatLog.v("ClientSetupReceiver", "ClientSetupReceiver()-->");
      ((AppManageService)((ExternalServiceManager)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ExternalServiceManager.class.getName())).getExternalService(AppManageService.class.getName())).initConfig();
      label40: LogCatLog.v("ClientSetupReceiver", "ClientSetupReceiver()<--");
      return;
    }
    catch (Exception localException)
    {
      break label40;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.receiver.a
 * JD-Core Version:    0.6.2
 */