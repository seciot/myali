package com.alipay.mobile.base.rpc.impl;

import android.os.Bundle;
import com.alipay.mobile.base.rpc.InterceptorService;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.annotation.UpdateDeviceInfo;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public class InterceptorServiceImpl extends ExternalService
  implements InterceptorService
{
  protected void onCreate(Bundle paramBundle)
  {
    RpcService localRpcService = (RpcService)getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());
    localRpcService.addRpcInterceptor(CheckLogin.class, new LoginInterceptor());
    localRpcService.addRpcInterceptor(OperationType.class, new CommonInterceptor());
    localRpcService.addRpcInterceptor(UpdateDeviceInfo.class, new CtuInterceptor(getMicroApplicationContext().getApplicationContext()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.rpc.impl.InterceptorServiceImpl
 * JD-Core Version:    0.6.2
 */