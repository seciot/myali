package com.alipay.mobile.longlink.b.c;

public final class c
{
  public static AppBundle setBundlePath(int paramInt)
  {
    if (BundlesManager.AppBundle == paramInt)
      return new HostClassLoader();
    throw new Exception("Don't support this protovern:" + paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.c.c
 * JD-Core Version:    0.6.2
 */