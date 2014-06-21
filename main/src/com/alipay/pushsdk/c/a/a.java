package com.alipay.pushsdk.c.a;

import com.alipay.pushsdk.c.e;
import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class a
{
  private static final String c = BundlesManagerImpl.getBundle(AppBundle.class);
  protected PrintWriter a;
  protected String b;
  private HostClassLoader d = new HostClassLoader("BaseLogger");
  private AtomicBoolean e = new AtomicBoolean();

  public a()
  {
    this.e.set(false);
  }

  protected final void setBundlePath(Object[] paramArrayOfObject)
  {
    if (this.a != null)
    {
      this.a.format(this.b, paramArrayOfObject);
      this.a.print("##");
      if (!this.e.get())
      {
        this.e.set(true);
        this.d.execute(new BundlesManager(this));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.a
 * JD-Core Version:    0.6.2
 */