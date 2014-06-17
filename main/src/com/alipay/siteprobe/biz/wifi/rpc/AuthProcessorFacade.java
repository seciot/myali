package com.alipay.siteprobe.biz.wifi.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.siteprobe.core.model.rpc.AuthProcessorReq;
import com.alipay.siteprobe.core.model.rpc.AuthProcessorRsp;
import com.alipay.siteprobe.core.model.rpc.AuthVerifyReq;
import com.alipay.siteprobe.core.model.rpc.AuthVerifyRsp;

public abstract interface AuthProcessorFacade
{
  @OperationType("alipay.siteprobe.network.processor")
  public abstract AuthProcessorRsp processor(AuthProcessorReq paramAuthProcessorReq);

  @OperationType("alipay.siteprobe.network.verify")
  public abstract AuthVerifyRsp verify(AuthVerifyReq paramAuthVerifyReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.siteprobe.biz.wifi.rpc.AuthProcessorFacade
 * JD-Core Version:    0.6.2
 */