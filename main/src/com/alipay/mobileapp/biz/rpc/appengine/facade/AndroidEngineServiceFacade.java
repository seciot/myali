package com.alipay.mobileapp.biz.rpc.appengine.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface AndroidEngineServiceFacade
{
  @OperationType("alipay.client.syncAndroidAppEngine")
  public abstract AndroidEngineRes syncAndroidAppEngine(AndroidEngineReq paramAndroidEngineReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appengine.facade.AndroidEngineServiceFacade
 * JD-Core Version:    0.6.2
 */