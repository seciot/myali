package com.alipay.mobile.command.invoke;

import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.rpc.http.Transport;
import com.alipay.mobile.command.rpc.proxy.Config;

final class a
  implements Config
{
  a(CmdCenterFacadeInvoke paramCmdCenterFacadeInvoke)
  {
  }

  public final Transport getTransport()
  {
    return new b(this);
  }

  public final String getUrl()
  {
    return RuntimeInfoManager.getInstance().getRpcUrl();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.invoke.a
 * JD-Core Version:    0.6.2
 */