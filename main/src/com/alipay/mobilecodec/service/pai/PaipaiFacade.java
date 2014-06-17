package com.alipay.mobilecodec.service.pai;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilecodec.service.pai.req.RouteCommandReq;
import com.alipay.mobilecodec.service.pai.res.RouteRes;

public abstract interface PaipaiFacade
{
  @OperationType("alipay.mobilecodec.route")
  public abstract RouteRes route(RouteCommandReq paramRouteCommandReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilecodec.service.pai.PaipaiFacade
 * JD-Core Version:    0.6.2
 */