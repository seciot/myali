package com.alipay.pushsdk.c.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class k
{
  private static final String a = BundlesManagerImpl.a(k.class);
  private static ExecutorService b = Executors.newFixedThreadPool(10);
  private String c;
  private String d;
  private String e;

  public k(String paramString1, String paramString2, String paramString3)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
  }

  public final void a()
  {
    BundlesManagerImpl.a(4, AppBundle, "put writeLog into thread pool");
    BundlesManager.execute(new l(this, (byte)0));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.k
 * JD-Core Version:    0.6.2
 */