package com.alipay.mobile.common.transport.spdy.internal;

import java.net.InetAddress;

public abstract interface Dns
{
  public static final Dns DEFAULT = new Dns.1();

  public abstract InetAddress[] getAllByName(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Dns
 * JD-Core Version:    0.6.2
 */