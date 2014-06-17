package com.alipay.mobile.framework.service;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class MapService extends ExternalService
{
  public abstract void callSysMapApp(String paramString);

  public abstract void poiSearch(String paramString1, String paramString2, String paramString3, String paramString4);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.MapService
 * JD-Core Version:    0.6.2
 */