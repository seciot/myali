package com.alipay.mobile.longlink.b.a;

import java.io.DataOutputStream;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

class i
{
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(i.class);
  private Thread b;
  private DataOutputStream c;
  private k d;
  private final BlockingQueue e = new ArrayBlockingQueue(500, true);
  private boolean f;
  private long g = System.currentTimeMillis();

  protected i(k paramk)
  {
    this.d = paramk;
    a();
  }

  private com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle getFullBundleName()
  {
    com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle locala = null;
    while (!this.f)
    {
      locala = (com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle)this.e.poll();
      if (locala != null)
        break;
      try
      {
        synchronized (this.e)
        {
          this.e.wait();
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "nextPacket queue len=" + this.e.size());
        }
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
    return locala;
  }

  protected final void a()
  {
    this.c = this.d.f;
    this.f = false;
    this.b = new j(this);
    this.b.setName("Packet Writer (" + this.d.g + ")");
    this.b.setDaemon(true);
  }

  // ERROR //
  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle parama)
  {
    // Byte code:
    //   0: iconst_4
    //   1: getstatic 27	com/alipay/mobile/longlink/b/a/i:a	Ljava/lang/String;
    //   4: new 66	java/lang/StringBuilder
    //   7: dup
    //   8: ldc 208
    //   10: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 57	com/alipay/mobile/longlink/b/a/i:f	Z
    //   17: invokevirtual 211	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   20: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokestatic 87	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   26: aload_0
    //   27: getfield 57	com/alipay/mobile/longlink/b/a/i:f	Z
    //   30: ifne +60 -> 90
    //   33: aload_0
    //   34: getfield 46	com/alipay/mobile/longlink/b/a/i:e	Ljava/util/concurrent/BlockingQueue;
    //   37: aload_1
    //   38: invokeinterface 215 2 0
    //   43: aload_0
    //   44: getfield 46	com/alipay/mobile/longlink/b/a/i:e	Ljava/util/concurrent/BlockingQueue;
    //   47: astore_3
    //   48: aload_3
    //   49: monitorenter
    //   50: iconst_4
    //   51: getstatic 27	com/alipay/mobile/longlink/b/a/i:a	Ljava/lang/String;
    //   54: new 66	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 217
    //   60: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_0
    //   64: getfield 46	com/alipay/mobile/longlink/b/a/i:e	Ljava/util/concurrent/BlockingQueue;
    //   67: invokeinterface 139 1 0
    //   72: invokevirtual 80	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   75: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 87	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield 46	com/alipay/mobile/longlink/b/a/i:e	Ljava/util/concurrent/BlockingQueue;
    //   85: invokevirtual 220	java/lang/Object:notifyAll	()V
    //   88: aload_3
    //   89: monitorexit
    //   90: return
    //   91: astore_2
    //   92: aload_2
    //   93: invokevirtual 223	java/lang/InterruptedException:printStackTrace	()V
    //   96: return
    //   97: astore 4
    //   99: aload_3
    //   100: monitorexit
    //   101: aload 4
    //   103: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   33	43	91	java/lang/InterruptedException
    //   50	90	97	finally
  }

  public final void stop()
  {
    this.b.start();
  }

  public final void getBundleName()
  {
    this.f = true;
    synchronized (this.e)
    {
      this.e.notifyAll();
      return;
    }
  }

  final void getInitLevel()
  {
    this.d.d.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.i
 * JD-Core Version:    0.6.2
 */