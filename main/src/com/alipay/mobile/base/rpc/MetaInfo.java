package com.alipay.mobile.base.rpc;

import com.alipay.mobile.base.rpc.impl.InterceptorServiceImpl;
import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.service.ServiceDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    this.entry = "RpcInterceptor";
    ServiceDescription localServiceDescription = new ServiceDescription();
    localServiceDescription.setName("RpcInterceptor");
    localServiceDescription.setClassName(InterceptorServiceImpl.class.getName());
    localServiceDescription.setInterfaceClass(InterceptorService.class.getName());
    localServiceDescription.setLazy(false);
    this.services.add(localServiceDescription);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.MetaInfo
 * JD-Core Version:    0.6.2
 */