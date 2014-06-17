package com.alipay.mobile.framework.service.common.impl;

import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.rpc.Config;
import com.alipay.mobile.common.transport.Transport;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;

class RpcServiceImpl$1
  implements Config
{
  RpcServiceImpl$1(RpcServiceImpl paramRpcServiceImpl)
  {
  }

  public Transport getTransport()
  {
    return (Transport)this.this$0.getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName());
  }

  public String getUrl()
  {
    return ReadSettingServerUrl.getInstance().getGWFURL(AlipayApplication.getInstance().getApplicationContext());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.RpcServiceImpl.1
 * JD-Core Version:    0.6.2
 */