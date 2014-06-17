package com.alipay.mobile.common.transport.spdy;

import java.net.Proxy;
import java.net.URL;
import java.util.List;

public abstract interface OkAuthenticator
{
  public abstract OkAuthenticator.Credential authenticate(Proxy paramProxy, URL paramURL, List paramList);

  public abstract OkAuthenticator.Credential authenticateProxy(Proxy paramProxy, URL paramURL, List paramList);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkAuthenticator
 * JD-Core Version:    0.6.2
 */