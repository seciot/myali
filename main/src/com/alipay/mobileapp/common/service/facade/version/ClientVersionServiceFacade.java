package com.alipay.mobileapp.common.service.facade.version;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionMemoRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq;

public abstract interface ClientVersionServiceFacade
{
  @OperationType("alipay.client.queryVersionMemo")
  public abstract ClientVersionMemoRes queryVersionMemo(ClientVersionServiceReq paramClientVersionServiceReq);

  @OperationType("alipay.client.updateVersion")
  public abstract ClientUpdateCheckRes versionUpdateCheck(ClientVersionServiceReq paramClientVersionServiceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.version.ClientVersionServiceFacade
 * JD-Core Version:    0.6.2
 */