package com.alipay.mobile.framework.service.ext;

import com.alipay.mobile.framework.service.CommonService;
import com.alipay.mobile.framework.service.ServiceDescription;

public abstract class ExternalServiceManager extends CommonService
{
  public abstract ExternalService getExternalService(String paramString);

  public abstract void registerExtnernalService(ServiceDescription paramServiceDescription);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.ExternalServiceManager
 * JD-Core Version:    0.6.2
 */