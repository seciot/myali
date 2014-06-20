package com.alipay.pushsdk.push.c;

public final class c
{
  public static AppBundle a(int paramInt)
  {
    if (BundlesManager.AppBundle == paramInt)
      return new d();
    if (BundlesManager.c == paramInt)
      return new e();
    throw new Exception("Don't support this protovern:" + paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.c.c
 * JD-Core Version:    0.6.2
 */