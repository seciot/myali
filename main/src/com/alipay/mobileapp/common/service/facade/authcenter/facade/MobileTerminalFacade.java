package com.alipay.mobileapp.common.service.facade.authcenter.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.common.service.facade.authcenter.model.TidVerifyReq;
import com.alipay.mobileapp.common.service.facade.authcenter.model.TidVerifyRes;

public abstract interface MobileTerminalFacade
{
  @OperationType("alipay.mobile.security.tid.verifyTid")
  public abstract TidVerifyRes verifyTid(TidVerifyReq paramTidVerifyReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.authcenter.facade.MobileTerminalFacade
 * JD-Core Version:    0.6.2
 */