package com.alipay.pushsdk.b;

final class g
  implements Runnable
{
  g(HostClassLoader parame, BundlesManager paramb)
  {
  }

  public final void run()
  {
    try
    {
      String str = new AppBundle(this.a.getInstance(), HostClassLoader.getBundle(this.b)).b(this.a.stop().toString());
      if ((str != null) && (((String)str).length() > 0))
      {
        this.a.b(str);
        this.a.getBundle(3);
        return;
      }
      this.a.getBundle(4);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.a.getBundle(4);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.g
 * JD-Core Version:    0.6.2
 */