package com.alipay.pushsdk.b;

final class g
  implements Runnable
{
  g(e parame, BundlesManager paramb)
  {
  }

  public final void run()
  {
    try
    {
      String str = new AppBundle(this.a.a(), e.a(this.b)).b(this.a.b().toString());
      if ((str != null) && (((String)str).length() > 0))
      {
        this.a.b(str);
        this.a.a(3);
        return;
      }
      this.a.a(4);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.a.a(4);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.g
 * JD-Core Version:    0.6.2
 */