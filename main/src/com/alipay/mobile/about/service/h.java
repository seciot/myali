package com.alipay.mobile.about.service;

import com.alipay.mobileapp.common.service.facade.version.ClientVersionServiceFacade;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq;

final class h
  implements Runnable
{
  h(UpdateServicesImpl paramUpdateServicesImpl, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      ClientVersionServiceReq localClientVersionServiceReq = m.a();
      localClientVersionServiceReq.setUserId(this.a);
      ClientUpdateCheckRes localClientUpdateCheckRes = UpdateServicesImpl.access$000(this.b).versionUpdateCheck(localClientVersionServiceReq);
      UpdateServicesImpl.access$100(this.b, localClientUpdateCheckRes);
      this.b.updateImmediately();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("升级失败(checkUpdate)：").append(localException.getLocalizedMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.h
 * JD-Core Version:    0.6.2
 */