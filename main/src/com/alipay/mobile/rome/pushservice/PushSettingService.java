package com.alipay.mobile.rome.pushservice;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PushSettingService extends ExternalService
{
  public abstract String getPushState();

  public abstract void setPushState(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.PushSettingService
 * JD-Core Version:    0.6.2
 */