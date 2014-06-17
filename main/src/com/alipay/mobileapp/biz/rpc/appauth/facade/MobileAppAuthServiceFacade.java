package com.alipay.mobileapp.biz.rpc.appauth.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface MobileAppAuthServiceFacade
{
  @OperationType("alipay.client.authSign")
  public abstract AuthSignRes authSign(AuthSignReq paramAuthSignReq);

  @OperationType("alipay.client.getAuthStatus")
  public abstract GetAuthStatusRes getAuthStatus(GetAuthStatusReq paramGetAuthStatusReq);

  @OperationType("alipay.client.getAuthStatusValidTid")
  public abstract GetAuthStatusRes getAuthStatusValidTid(GetAuthStatusReq paramGetAuthStatusReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appauth.facade.MobileAppAuthServiceFacade
 * JD-Core Version:    0.6.2
 */