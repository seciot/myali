package com.alipay.mobileapp.biz.rpc.dynamic.conf;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.dynamic.conf.vo.AppDynamicConfReq;
import com.alipay.mobileapp.biz.rpc.dynamic.conf.vo.AppDynamicConfRes;

public abstract interface MobileAppDynamicConfService
{
  @OperationType("alipay.client.dynamic.conf.get")
  public abstract AppDynamicConfRes getAppDynamicConf(AppDynamicConfReq paramAppDynamicConfReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.dynamic.conf.MobileAppDynamicConfService
 * JD-Core Version:    0.6.2
 */