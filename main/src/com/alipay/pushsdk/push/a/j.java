package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.push.c.a;
import java.io.DataOutputStream;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

class j
{
  private static final String a = BundlesManagerImpl.getBundle(j.class);
  private Thread b;
  private DataOutputStream c;
  private m d;
  private final BlockingQueue e = new ArrayBlockingQueue(500, true);
  private boolean f;
  private long g = System.currentTimeMillis();

  protected j(m paramm)
  {
    this.d = paramm;
    getInstance();
  }

  private AppBundle getFullBundleName()
  {
    AppBundle locala = null;
    while (!this.f)
    {
      locala = (AppBundle)this.e.poll();
      if (locala != null)
        break;
      try
      {
        synchronized (this.e)
        {
          this.e.wait();
          BundlesManagerImpl.e(4, AppBundle, "nextPacket queue len=" + this.e.size());
        }
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
    return locala;
  }

  protected final void initExecutor()
  {
    this.c = this.d.f;
    this.f = false;
    this.b = new k(this);
    this.b.setName("Packet Writer (" + this.d.g + ")");
    this.b.setDaemon(true);
  }

  // ERROR //
  public final void setBundlePath(AppBundle parama)
  {
    // Byte code:
    //   0: iconst_4
    //   1: getstatic 27	com/alipay/pushsdk/push/a/j:a	Ljava/lang/String;
    //   4: new 66	java/lang/StringBuilder
    //   7: dup
    //   8: ldc 203
    //   10: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 57	com/alipay/pushsdk/push/a/j:f	Z
    //   17: invokevirtual 206	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   20: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokestatic 87	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   26: aload_0
    //   27: getfield 57	com/alipay/pushsdk/push/a/j:f	Z
    //   30: ifne +60 -> 90
    //   33: aload_0
    //   34: getfield 46	com/alipay/pushsdk/push/a/j:e	Ljava/util/concurrent/BlockingQueue;
    //   37: aload_1
    //   38: invokeinterface 210 2 0
    //   43: aload_0
    //   44: getfield 46	com/alipay/pushsdk/push/a/j:e	Ljava/util/concurrent/BlockingQueue;
    //   47: astore_3
    //   48: aload_3
    //   49: monitorenter
    //   50: iconst_4
    //   51: getstatic 27	com/alipay/pushsdk/push/a/j:a	Ljava/lang/String;
    //   54: new 66	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 212
    //   60: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_0
    //   64: getfield 46	com/alipay/pushsdk/push/a/j:e	Ljava/util/concurrent/BlockingQueue;
    //   67: invokeinterface 134 1 0
    //   72: invokevirtual 80	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   75: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 87	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield 46	com/alipay/pushsdk/push/a/j:e	Ljava/util/concurrent/BlockingQueue;
    //   85: invokevirtual 215	java/lang/Object:notifyAll	()V
    //   88: aload_3
    //   89: monitorexit
    //   90: return
    //   91: astore_2
    //   92: aload_2
    //   93: invokevirtual 218	java/lang/InterruptedException:printStackTrace	()V
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
 * Qualified Name:     com.alipay.pushsdk.push.a.j
 * JD-Core Version:    0.6.2
 */