package com.alipay.mobile.common.transport.spdy;

public class AlipayOkHttpClientConfig
{
  public static boolean isNotUseNpn = false;
  public static boolean isTrustAll = false;

  public static void initDevConfig()
  {
    isTrustAll = true;
    isNotUseNpn = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.AlipayOkHttpClientConfig
 * JD-Core Version:    0.6.2
 */