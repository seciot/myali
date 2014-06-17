package com.alipay.liveservice.common.service.rpc;

import com.alipay.liveservice.common.service.facade.model.LiveServiceRequest;
import com.alipay.liveservice.common.service.facade.model.LiveServiceRouterResult;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface LiveServiceRouterRpc
{
  @OperationType("alipay.liveservice.route")
  public abstract LiveServiceRouterResult liveServiceRouter(LiveServiceRequest paramLiveServiceRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.liveservice.common.service.rpc.LiveServiceRouterRpc
 * JD-Core Version:    0.6.2
 */