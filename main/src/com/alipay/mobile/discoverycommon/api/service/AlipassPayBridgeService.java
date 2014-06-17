package com.alipay.mobile.discoverycommon.api.service;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class AlipassPayBridgeService extends ExternalService
{
  public abstract void closePayBridge();

  public abstract void startPayBridge(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService
 * JD-Core Version:    0.6.2
 */