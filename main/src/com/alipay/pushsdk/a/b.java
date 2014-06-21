package com.alipay.pushsdk.a;

final class b
  implements Runnable
{
  b(AppBundle parama)
  {
  }

  public final void run()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.e(3, AppBundle.a(), "sendConfigReq doing...");
    new BundlesManagerImpl(AppBundle.getBundle(this.a)).a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.b
 * JD-Core Version:    0.6.2
 */